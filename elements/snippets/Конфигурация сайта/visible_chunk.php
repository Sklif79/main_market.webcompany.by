name:visible_chunk
description:Выводить чанк
======
<?php
<?php
	/*
*Выводим чанк, если он включен в конфигурации сайта*
*В качестве шаблонов в поле "chunk_name" могут быть названия чанков; код, который нужно выводить через @CODE: ; файл с шаблоном через @FILE: ; *
* @author Rising13 *
* ver. 1.0.2 *
* Date: 26.06.2018 *
*/

	/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
	include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);

/*Подключаем нужные библиотеки, инициализируем объекты*/
include_once (MODX_BASE_PATH . 'assets/snippets/DocLister/lib/DLTemplate.class.php');
//include_once (MODX_BASE_PATH . 'assets/lib/APIHelpers.class.php'); //Если используется MODxAPI или библиотеки на его базе, то подгружать не нужно
$DLTemplate = DLTemplate::getInstance($modx);

/*Получаем параметры с вызова сниппета*/	
$id_param_val=(isset($id_param_val)) ? $id_param_val: $modx -> documentObject['id_param_val'];	//id страницы конфигурации
$chunk_name=(isset($chunk_name)) ? $chunk_name: $modx -> documentObject['chunk_name'];	//Имя чанка, который нужно выводить
$tv_visible_name=(isset($tv_visible_name)) ? $tv_visible_name: $modx -> documentObject['tv_visible_name'];	//Имя TV-параметра c значением опции
$session_param_name = (isset($session_param_name)) ? $session_param_name: $modx -> documentObject['session_param_name'];	//название параметра в сессии для тестового режима
$chunk_placeholders = (isset($chunk_placeholders)) ? $chunk_placeholders: $modx -> documentObject['chunk_placeholders'];	//Задаем значения плейсхолдеров в виде json строки вида {"placeholder_name_1": "placeholder_value_1", "placeholder_name_2": "placeholder_value_2"}





/*Задаем значения по умолчанию*/
$chunk_value = '';
$id_param_val = ($id_param_val!='') ? $id_param_val : '99';
$session_param_name = (isset($session_param_name) && $session_param_name!='') ? $session_param_name : $tv_visible_name;

/*Получаем текущее значение опции*/
if($tv_visible_name != '' && $chunk_name!=''){
	/*Для тестового режима*/

	/*Получаем значение опции "тестовый режим"*/
	$site_test_mode_value = $configch->test_mode();

	/*Проверяем, что сайт находится в тестовом режиме*/
	if ($site_test_mode_value === true) {
		$option_value = (bool) $configch->get_config_session($session_param_name);
	}else{ //Для администратора
		$option_value = (bool) $configch->doc_get_value($id_param_val,$tv_visible_name);
	}

	/*Проверяем передачу плейсхолдеров, распаршиваем их в ассоциативный массив*/
	if(!empty($chunk_placeholders)){
		$chunk_placeholders_value = json_decode($chunk_placeholders,true);
		$json_parse_error = json_last_error();
		if(!is_array($chunk_placeholders_value) || $json_parse_error !==JSON_ERROR_NONE){
			$chunk_placeholders_value = '';
		}
	}else{
		$chunk_placeholders_value = '';
	}

	if($option_value){
		$chunk_value = $DLTemplate->parseChunk($chunk_name,$chunk_placeholders_value,true);	
	}

	return $chunk_value;
}
