name:shop_sheck
description:Отключение корзины для тестового режима
======
<?php
<?php
/**
 * shop_sheck
 *
 * Отключение корзины для тестового режима
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

/*Задаем значения по умолчанию*/
$idp=99;	//id страницы конфигурации
$tv_param_name = 'no_busket_btn'; //название TV-параметра с конфигурацией
$delimeter = '';

/*Получаем значение опции "тестовый режим"*/
$site_test_mode_value = $configch->test_mode();

/*Проверяем, что сайт находится в тестовом режиме*/
if ($site_test_mode_value === true) {
	/*
	*Сайт в тестовом режиме
	*Получаем значение параметра включения корзины из сессии
	*/
	$remove_btn = (bool) $configch->get_config_session($tv_param_name);
}else{
	/*
	*Сайт в боевом режиме
	*Получаем значение параметра включения корзины из значения TV параметра со страницы конфигурации
	*/
	$remove_btn = (bool) $configch->doc_get_value($idp,$tv_param_name);
}
	
/*Проверяем, выводим разделитель*/
if($remove_btn){
	$delimeter = '-';
}

/*Выводим информацию*/
/*return $delimeter;

$configuration_id_page = 99;
$delimeter = '';
if(isset($_SESSION['site_config']['no_busket_btn'])){
	$site_test_mode_val = false;
	$site_test_mode_val_arr = $modx -> getTemplateVar('site_test_mode','*',$configuration_id_page);
	if(!empty($site_test_mode_val_arr)){
		$site_test_mode_val = (bool) $site_test_mode_val_arr['value'];
	}
	if($site_test_mode_val){
		$remove_btn = (bool) $_SESSION['site_config']['no_busket_btn'];
		if($remove_btn){
			$delimeter = '-';
		}else{
			$delimeter = '';
		}
	}
}
return $delimeter;*/
