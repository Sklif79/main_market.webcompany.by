name:option_class_add
description:<b>1.0</b> выводит класс в зависимости от опции параметра настроек
======
<?php
<?php
/**
 * class_order_add
 *
 * выводит класс в зависимости от опции параметра настроек
 *
 * @category 	snippet
 * @version 	1.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @author      Rising13
 * @lastupdate  30/05/2018
 */

/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);

/*Получаем параметры из вызова сниппета*/	
$idp=(isset($idp)) ? $idp: $modx -> documentObject['idp'];	//id страницы конфигурации
$tv_param_name=(isset($tv_param_name)) ? $tv_param_name: $modx -> documentObject['tv_param_name'];	//Имя TV-параметра c вариантами опций
$addClass = (isset($addClass)) ? $addClass: $modx -> documentObject['addClass']; //Имя класа css, который нужно выводить

/*Задаем значения по умолчанию*/
$result = '';
$idp = ($idp=='') ? 99: $idp;
$addClass = ($addClass=='') ? 'order': $addClass;


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

/*Проверяем, нужно добавить класс*/
if($remove_btn){
	$result = $addClass;
}

/*Выводим информацию*/
return $result;
