name:header_scroll_select_load
description:Вывод выбранного варианта скролл верхней части сайта
======
<?php
<?php
/*
Вывод выбранного варианта скролл верхней части сайта
* @author Rising13 *
* ver. 1.0.1 *
*/
	
/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);

/*Задаем значения по умолчанию*/
$idp=99;	//id страницы конфигурации
$tv_params_name_array = array('site_header_scroll_config','visible_header_scroll'); //названия TV-параметров с конфигурацией
$default_header_scroll = 'header_scroll_default'; //Название чанка по умолчанию

$header_scroll_visible = false;
$header_scroll_chunk_name = '';


/*Получаем значение опции "тестовый режим"*/
$site_test_mode_value = $configch->test_mode();

/*Проверяем, что сайт находится в тестовом режиме*/
if ($site_test_mode_value === true) {
	$header_scroll_chunk_name = (string) $configch->get_config_session($tv_params_name_array[0]);
	$header_scroll_visible = (bool) $configch->get_config_session($tv_params_name_array[1]);
}else{ //Для администратора
	$header_scroll_chunk_name = (string) $configch->doc_get_value($idp,$tv_params_name_array[0]);
	$header_scroll_visible = (bool) $configch->doc_get_value($idp,$tv_params_name_array[1]);
}

$header_scroll_chunk_name = (!empty($header_scroll_chunk_name)) ? $header_scroll_chunk_name : $default_header_scroll;

if($header_scroll_visible){
	$header_scroll_chunk_value = $modx->getChunk($header_scroll_chunk_name);//Получаем значение чанка
	return $header_scroll_chunk_value;
}
