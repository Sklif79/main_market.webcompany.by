name:header_select_load
description:Вывод выбранного варианта верхней части сайта
======
<?php
<?php
/*
Выводим выбранный вариант верхней части сайта
* @author Rising13 *
* ver. 1.0.0 *
*/

/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);

/*Подключаем нужные библиотеки, инициализируем объекты*/
include_once (MODX_BASE_PATH . 'assets/snippets/DocLister/lib/DLTemplate.class.php');
//include_once (MODX_BASE_PATH . 'assets/lib/APIHelpers.class.php'); //Если используется MODxAPI или библиотеки на его базе, то подгружать не нужно
$DLTemplate = DLTemplate::getInstance($modx);

/*Задаем значения по умолчанию*/
$header_chunk_value = '';
$idp=99;	//id страницы конфигурации
$tv_param_name = 'site_header_config'; //название TV-параметра с конфигурацией
$default_header = 'header_default'; //Название чанка по умолчанию
$noshadow_chunk_name_array = array('header-3_1','header-3_2','header-4_5','header-5_2','header-6_2','header-6_3','header-7_1','header-7_2'); //Список названий чанков, для которых нужно добавить класс


/*Получаем значение опции "тестовый режим"*/
$site_test_mode_value = $configch->test_mode();

if ($site_test_mode_value === true) {
	$header_chunk_name = (string) $configch->get_config_session($tv_param_name);
}else{ //Для администратора
	$header_chunk_name = (string) $configch->doc_get_value($idp,$tv_param_name);
}

if(empty($header_chunk_name)){
	$header_chunk_name = $default_header;
}

if(in_array($header_chunk_name,$noshadow_chunk_name_array)){
	$noshadow_class = 'no-shadow';
}else{
	$noshadow_class = '';
}

$modx->setPlaceholder('noshadow_class',$noshadow_class);

$header_chunk_value = $DLTemplate->parseChunk($header_chunk_name,'',true);//Получаем значение чанка с результатами работы парсера

return $header_chunk_value;
