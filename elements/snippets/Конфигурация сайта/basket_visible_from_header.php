name:basket_visible_from_header
description:Генерируем вывод корзины для определенных шапок
======
<?php
<?php
/*
Генерируем вывод корзины для определенных шапок
* @author Rising13 *
* ver. 1.0.0 *
*/

/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);

/*Получаем параметры с вызова сниппета*/	
$id_param_val=(isset($id_param_val)) ? $id_param_val: $modx -> documentObject['id_param_val'];	//id страницы конфигурации
$tv_param_val_name=(isset($tv_param_val_name)) ? $tv_param_val_name: $modx -> documentObject['tv_param_val_name'];	//Имя TV-параметра c значением опции
$session_param_name = (isset($session_param_name)) ? $session_param_name: $modx -> documentObject['session_param_name'];	//название параметра в сессии для тестового режима
$params_array = (isset($params_array)) ? $params_array: $modx -> documentObject['params_array'];	//Значения через запятую, для которых нужно вывести результаты сниппета


/*Задаем значения по умолчанию*/
$id_param_val = ($id_param_val!='') ? $id_param_val : '99';
$params_array = ($params_array!='') ? $params_array : 'header_default,header-1_1,header-1_2,header-1_3,header-1_4';
$basket_return = '';
$snippet_name = 'basket_visible_and_type';
$snippet_params = array();

/*Получаем текущее значение опции*/
if($tv_param_val_name != ''){

	/*Для тестового режима*/

	/*Получаем значение опции "тестовый режим"*/
	$site_test_mode_value = $configch->test_mode();

	/*Проверяем, что сайт находится в тестовом режиме*/
	if ($site_test_mode_value === true) {
		$option_value = (string) $configch->get_config_session($session_param_name);
	}else{
		$option_value = (string) $configch->doc_get_value($id_param_val,$tv_param_val_name);
	}

	$params_array_parsed = explode(',',$params_array);

	if(in_array($option_value,$params_array_parsed)){
		$basket_return = $modx->runSnippet($snippet_name, $snippet_params);//делаем обращение к сниппету c нужными параметрами
	}

	return $basket_return;
}
