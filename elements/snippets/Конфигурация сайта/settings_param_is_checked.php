name:settings_param_is_checked
description:Генерируем вывод опций в форме настроек
======
<?php
<?php
/**
 * settings_param_is_checked
 *
 * выводит атрибут checked. Отмечаем активность элемента при бинарном выборе в карточке товара
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

/*Получаем параметры с вызова сниппета*/	
$id_param_val=(isset($id_param_val)) ? $id_param_val: $modx -> documentObject['id_param_val'];	//id страницы конфигурации
$tv_param_val_name=(isset($tv_param_val_name)) ? $tv_param_val_name: $modx -> documentObject['tv_param_val_name'];	//Имя TV-параметра c значением опции
$session_param_name = (isset($session_param_name)) ? $session_param_name: $modx -> documentObject['session_param_name'];	//название параметра в сессии для тестового режима	

/*Задаем значения по умолчанию*/
if($id_param_val==''){
	$id_param_val = '99';
}

if($session_param_name==''){
	$session_param_name = $tv_param_val_name;
}
$is_checked_attribute = 'checked';
$is_checked = '';	

/*Проверяем, что у нас получен параметр*/
if($tv_param_val_name != ''){
	/*Получаем значение опции "тестовый режим"*/
	$site_test_mode_value = $configch->test_mode();	

	/*Проверяем, что сайт находится в тестовом режиме*/
	if ($site_test_mode_value === true) {
		/*
	*Сайт в тестовом режиме
	*Получаем значение параметра включения корзины из сессии
	*/
		$option_value = (bool) $configch->get_config_session($session_param_name);
	}else{
		/*
	*Сайт в боевом режиме
	*Получаем значение параметра включения корзины из значения TV параметра со страницы конфигурации
	*/
		$option_value = (bool) $configch->doc_get_value($id_param_val,$tv_param_val_name);
	}

	/*Для управления корзиной делаем инверсию значений*/
	if($tv_param_val_name === 'no_busket_btn'){
		$option_value = !$option_value;
	}

	if($option_value){
		$is_checked = $is_checked_attribute;
	}
	return $is_checked;
}
