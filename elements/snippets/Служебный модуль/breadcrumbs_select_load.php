name:breadcrumbs_select_load
description:Вывод выбранного варианта хлебных крошек и заголовка
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

$idp=99;	//id страницы конфигурации
$tv_param_name = 'site_breadcrumbs_config'; //название TV-параметра с конфигурацией
$default_breadcrumbs = 'breadcrumbs_default'; //Название чанка по умолчанию

$site_test_mode_value = $configch->test_mode();

if ($site_test_mode_value === true) {
	$breadcrumbs_chunk_name = (string) $configch->get_config_session($tv_param_name);
}else{
	$breadcrumbs_chunk_name = (string) $configch->doc_get_value($idp,$tv_param_name);
}

$breadcrumbs_chunk_name = (!empty($breadcrumbs_chunk_name)) ? $breadcrumbs_chunk_name : $default_breadcrumbs;

$breadcrumbs_chunk_value = $modx->getChunk($breadcrumbs_chunk_name);//Получаем значение чанка

if($breadcrumbs_chunk_name===$default_breadcrumbs){
	$modx->setPlaceholder('breadcrumbs_default',$breadcrumbs_chunk_value);
}else{
	return $breadcrumbs_chunk_value;
}
