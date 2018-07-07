name:no_busket_btn
description:Убираем кнопку заказать добавляя класс
======
<?php
<?php
/*
Убираем кнопку заказать добавляя класс
* @author Rising13 *
* ver. 1.0.0 *
*/

/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);	

/*Задаем значения по умолчанию*/
$idp=99;	//id страницы конфигурации
$tv_param_name = 'no_busket_btn'; //название TV-параметра с конфигурацией

$addClass=(isset($addClass)) ? $addClass: $modx -> documentObject['addClass'];	//Добавляемый класс
if($addClass==''){
	$addClass = 'order';
}

$site_test_mode_value = $configch->test_mode();

if ($site_test_mode_value === true) {
	$remove_btn = (bool) $configch->get_config_session($tv_param_name);
}else{
	$remove_btn = (bool) $configch->doc_get_value($idp,$tv_param_name);
}

if ($remove_btn) {
	return $addClass;
}
