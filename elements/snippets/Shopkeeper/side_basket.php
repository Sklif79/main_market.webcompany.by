name:side_basket
description:Выводит плавающую корзину со списком заказанных товаров
======
<?php
<?php
/*Выводит выпадающую корзину со списком заказанных товаров*/

	/*Задаем исходные параметры*/
	$tv_img_name = 'product_prev'; //TV-параметр изображения для превью
$basket_rowTpl = 'side_basket_cartRowTpl_popup'; // название чанка шаблона вывода превью товаров в корзине
$basket_outerTpl = 'side_basket_outer_tpl'; //Название чанка шаблона контейнера корзины-попапа
$basket_page_id = 140; //id страницы с карточкой товара
$catalog_page_id = 53;//id страницы с каталогом

if(isset($_SESSION['purchases']) && !empty($_SESSION['purchases'])){

	$shk_purchases_array = unserialize($_SESSION['purchases']); //Получаем массив с заказами.

	$shk_purchases_processed_array = array(); //В данном массиве будут параметры

	if(count($shk_purchases_array)>0){
		$price_total=0;
		$i = 0; //Номер итерации
		/*Проходимся по массиву, получаем параметры заказа*/
		foreach($shk_purchases_array as $purchase){

			/*Получаем нужные параметры*/
			$p_doc_id = $purchase[0];//id документа

			$p_count = (int) $purchase[1];//Количество заказанных товаров

			$p_price = (float) $purchase[2];
			$p_price = round($p_price, 2);//Стоимость товара с округлением
			$p_price_format = number_format($p_price, 2, '.', ' ');//Стоимость товара с округлением и форматированием

			$p_url = $modx->makeUrl($p_doc_id);//Ссылка на страницу с подробным описанием товара

			$p_name_arr = $modx->getDocument($p_doc_id,'pagetitle');
			$p_name = $p_name_arr['pagetitle'];//Название товара

			$p_price_count = $p_count*$p_price;
			$p_price_count = round($p_price_count, 2); //Стоимость с учетом количества заказанного товара с округлением
			$p_price_count_format = number_format($p_price_count, 2, '.', ' ');//Стоимость с учетом количества заказанного товара с округлением и форматированием

			$p_prew_img_arr = $modx->getTemplateVar($tv_img_name,'name',$p_doc_id);
			$p_prew_img = $p_prew_img_arr['value'];

			$snippet_name = 'phpthumb';
			$arrparams = array( 'input' => $p_prew_img,'options' => 'w=186,h=186,f=png,q=95,far=C,bg=ffffff');
			$p_prew_img = $modx->runSnippet($snippet_name,$arrparams);//Изображение превью товара с подгонкой размера


			/*Высчитываем суммарную стоимость товаров*/
			$price_total += $p_price_count;

			/*Создаем массив с полученными параметрами  товара*/
			$shk_purchases_processed_array[$i]['doc_id'] = $p_doc_id;
			$shk_purchases_processed_array[$i]['count'] = $p_count;
			$shk_purchases_processed_array[$i]['price'] = $p_price;
			$shk_purchases_processed_array[$i]['price_format'] = $p_price_format;
			$shk_purchases_processed_array[$i]['url'] = $p_url;
			$shk_purchases_processed_array[$i]['name'] = $p_name;
			$shk_purchases_processed_array[$i]['price_count'] = $p_price_count;
			$shk_purchases_processed_array[$i]['price_count_format'] = $p_price_count_format;
			$shk_purchases_processed_array[$i]['prew_img'] = $p_prew_img;
			$shk_purchases_processed_array[$i]['session_id'] = $i;

			$i++;
		}
	}else{
		$shk_purchases_processed_array = [];
	}
}else{
	$shk_purchases_processed_array = [];
}

$basket_url = $modx->makeUrl($basket_page_id);//url корзина товара
$catalog_url = $modx->makeUrl($catalog_page_id);//url каталог
if(count($shk_purchases_processed_array)>0){
	$price_total_format = number_format($price_total, 2, '.', ' ');//Суммарная стоимость товара форматированная
	$basket_products = '';
	$basket_class = '';
	foreach($shk_purchases_processed_array as $purchase_proc){
		$purchase_row = $modx->parseChunk($basket_rowTpl, $purchase_proc, '[+', '+]' );
		$basket_products.=$purchase_row.PHP_EOL;
	}
}else{
	$basket_products = '';
	$price_total = 0;
	$price_total_format = 0;
	$basket_class = 'empty';
}

$basket_under_header_placeholders_array = array('basket_products' => $basket_products, 'price_total' => $price_total, 'price_total_format' => $price_total_format, 'basket_url' => $basket_url,
												'basket_class' => $basket_class, 'catalog_url' => $catalog_url);
$basket_under_header_result = $modx->parseChunk($basket_outerTpl, $basket_under_header_placeholders_array, '[+', '+]' );
return $basket_under_header_result;
