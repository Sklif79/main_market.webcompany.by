name:Search_result_var2
description:Результаты поиска. Вариант номер 2. На базе DocLister
======
<?php
<?php
/*
* Данный сниппет предназначен для вывода результатов поиска по поисковому запросу
* @author Rising13
Плейсхолдеры [+search.q+] - выводит запрос.
[+search.pages+] - выводит пагинацию
*/

	/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
	include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);	


/*Параметры, параметры по умолчанию*/
$getname = 's';//имя GET параметра
$no_result_str = '<div>По вашему поисковому запросу ничего не найдено</div>'; //Шаблон вывода при отсутствии результатов
$orderBy_val = 'menuindex ASC';//Сортировка
$search_tvList_val = 'search_img_prev,product_prev,services_index_prew_img,services_img_prev_new,subcat_img_prew,img_prev_sale,brand_img';//Перечень TV для вывода изображений
$search_template = 'products_search_tpl';//Шаблон вывода результатов поиска
$search_display_val = '12';//Количество элементов на странице
$text_prev_lenth_val = '500';//Количество символов для текста превью
$search_result_container_template = '<div class="products-wrap">[+dl.wrap+]</div>';//Шаблон вывода контейнера вывода результатов
$addWhereList = ''; //Дополнительный параметр для фильтрации

/*Параметры каталога для поиска*/
$config_page_id = 99;
$parents = 0; //id для поиска по всем разделам
$parents_catalog = 53; //каталог для поиска только по товарам

/*Получаем значение опции "тестовый режим"*/
$site_test_mode_value = $configch->test_mode();

/*Проверяем, что сайт находится в тестовом режиме*/
if ($site_test_mode_value === true) {
	$search_catalog_only = (bool) $configch->get_config_session('search_catalog_only');
	$search_catalog_id = (int) $configch->get_config_session('search_catalog_id');
}else{ //Для администратора
	$search_catalog_only = (bool) $configch->doc_get_value($config_page_id,'search_catalog_only');
	$search_catalog_id = (int) $configch->doc_get_value($config_page_id,'search_catalog_id');
}

if ($search_catalog_only) {
	$search_tvList_val = 'product_prev,novelty,sale,sale_persent,bestseller,articul,new_price,old_price,img_prew_prod';
	$search_template = 'product_plitka_tpl';
	$search_result_container_template = '
    <div id="product_cont">
			<div class="catalog-plitka uk-grid">
				[+dl.wrap+]
			</div>
    </div>';
	$addWhereList = 'c.template IN (38,64)';

	if (!empty($search_catalog_id)) {
		$parents = $search_catalog_id;
	} else {
		$parents = $parents_catalog;
	}
}

$snippet_name = 'DocLister';//Имя сниппета
$arrparams = array(
	'id' => 'search',
	'parents' => $parents,
	'depth' => '4',
	'tvPrefix' => '',
	'tvList' => $search_tvList_val,
	'tpl' => $search_template,
	'orderBy' => $orderBy_val,
	'total' => 'all',
	'noneWrapOuter' => '0',
	'dateFormat' => '%d.%m.%Y',
	'display' => $search_display_val,
	'paginate' => 'pages',
	'summary' => 'notags,len:' . $text_prev_lenth_val,
	'ownerTPL' => '@CODE:' . $search_result_container_template,
	'TplCurrentPage' => 'pages_TplCurrentPage',
	'TplDotsPage' => 'pages_TplDotsPage',
	'TplPage' => 'pages_TplPage',
	'TplWrapPaginate' => 'pages_TplWrapPaginate',
	'TplPrevP' => 'pages_TplPrevP',
	'TplNextP' => 'pages_TplNextP',
	'pageAdjacents' => '1',
	'noneTPL' => '@CODE:' . $no_result_str,
	'prepare' => 'searchpreparethumb,search_result_title_prepare',
	'filters' => '',
	'addWhereList' => $addWhereList
);

/*Получаем параметры GET-запроса, экранируем вывод*/
$getval = (string) $configch->get_escape($getname);
if($getval===''){
	return $no_result_str;
}

/*Проверяем на наличие GET-параметра с запросом*/
if (!empty($getval)) {
	/*Задаем Плейсхолдер для вывода запроса*/
	$modx->toPlaceholder('q', $getval, 'search.');
	/*Генерируем параметры фильтрации */
	$arrparams['filters'] = "AND(OR(content:pagetitle:like:{$getval};content:description:like:{$getval};content:content:like:{$getval};content:introtext:like:{$getval};tv:bottom_text_prod_group_block:like:{$getval};tv:articul:like:{$getval};tv:product_brand_select:like:{$getval};);content:searchable:=:1;)";

	/*Получаем и выводим результаты*/
	$snippet_result_val = $modx->runSnippet($snippet_name, $arrparams);//делаем обращение к сниппету c нужными параметрами

	$search_result_title = <<<EOT
<!-- SEARCH RESULT TITLE : begin -->
<p class="search-text-block">Найдено по запросу «{$getval}». Показано <span>[+search.to+]</span>.</p>
<p>(Результаты [+search.from+]-[+search.to+] из [+search.count+])</p>
<!-- SEARCH RESULT TITLE : end -->
EOT;

	$snippet_result_val = $search_result_title . PHP_EOL . $snippet_result_val;

	return $snippet_result_val;// выводим результат

}
