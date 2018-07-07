name:basket_visible_and_type
description:Отключение корзины и выбор вида отображения корзины
======
<?php
<?php
/**
 * basket_visible_and_type
 *
 * Отключение корзины и выбор вида отображения корзины
 *
 * @category 	snippet
 * @version 	1.1
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @author      Rising13
 * @lastupdate  28/05/2018
 */	

	/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
	include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);	

/*Исходные параметры*/	
$configuration_id_page = 99;
$site_test_mode_value = false;
$remove_btn = false;
$remove_btn_tv_name = 'no_busket_btn';
$basket_type_tv_name = 'basket_type';
$site_header_config_tv_name = 'site_header_config';

$basket_type = 'basket_default';
$header_other_basket_array = array('header-2_1','header-2_2','header-2_3','header-3_1',
								   'header-3_2','header-4_1','header-4_2','header-4_3',
								   'header-4_4','header-4_5','header-5_1','header-5_2',
								   'header-5_3','header-5_4','header-6_1','header-6_2',
								   'header-6_3'
								  );
$other_basket_chunk = 'Shopkeeper_cartTpl2';//альтернативный чанк для вывода корзины

/*Настройки сниппета Shopkeeper по умолчанию*/
$snippet_name = 'Shopkeeper';
$arrparams = array('cartType' => 'small',
				   'priceTV' => 'new_price',
				   'orderFormPage' => '140',
				   'changePrice' => '0',	  
				   'noJQuery'=> '1',
				   'noJavaScript' => '0',
				   'cartTpl' => 'Shopkeeper_cartTpl',
				   'noCounter' => '1',
				   'counterField' => '1',
				   'flyToCart' => 'image',
				   'hideOn' => '140'
				  );


/*Получаем значение опции "тестовый режим"*/
$site_test_mode_value = $configch->test_mode();

/*Проверяем, что сайт находится в тестовом режиме*/
if ($site_test_mode_value === true) {
	/*
	*Сайт в тестовом режиме
	*Получаем значение параметра включения корзины и опции корзины из сессии
	*/
	$remove_btn = (bool) $configch->get_config_session($remove_btn_tv_name);
	$basket_type = (string) $configch->get_config_session($basket_type_tv_name);
	$site_header_config = (string) $configch->get_config_session($site_header_config_tv_name);
}else{
	/*
	*Сайт в боевом режиме
	*Получаем значение параметра включения корзины и опции корзины из значения TV параметров со страницы конфигурации
	*/
	$remove_btn = (bool) $configch->doc_get_value($configuration_id_page,$tv_param_name);
	$basket_type = (string) $configch->doc_get_value($configuration_id_page,$basket_type_tv_name);
	$site_header_config = (string) $configch->doc_get_value($configuration_id_page,$site_header_config_tv_name);
}

/*Проверяем, включена ли корзина*/
if(!$remove_btn){
	/*Определяем тип корзины*/
	if($basket_type !== 'basket_default'){
		/*Корзина закреплена в шапке. Задаем параметры для сниппета*/
		$arrparams['cartType']='full';
		$arrparams['cartTpl']='Shopkeeper_side_basket_cartTpl';
		$arrparams['cartRowTpl']='Shopkeeper_side_basket_RowTpl';
		$arrparams['changePrice']='1';
	}else{
		/*Корзина плавающая*/
		/*Определяем, что у нас используется верхняя часть сайта, для которой нужно использовать отдельный шаблон*/
		if(in_array($site_header_config,$header_other_basket_array)){
			$arrparams['cartTpl']='Shopkeeper_cartTpl2';
		}
	}
	/*Вызываем сниппет*/
	$snippet_result = $modx->runSnippet($snippet_name,$arrparams);//делаем обращение к сниппету c нужными параметрами
	
	/*Проверяем тип корзины и выводим корзину в соответствующем месте*/
	if($basket_type === 'basket_default'){
		return $snippet_result;// выводим результат на месте вызова сниппета
	}else{
		$modx->toPlaceholder('side_basket',$snippet_result,'shk.');//Выводим результат в отдельный пелйсхолдер
	}
}
