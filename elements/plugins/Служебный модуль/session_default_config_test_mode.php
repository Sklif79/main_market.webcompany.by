name:session_default_config_test_mode
description:Задает параметры по умолчанию для тестового режима для конфигурации
======
<?php
/*
Задает параметры по умолчанию для тестового режима для конфигурации (Записывает в сессию)
* @author Rising13 *
* ver. 1.0.1 *
*/

/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);

/*Задаем параметры по умолчанию*/
$config_page_id = 99;
$session_params_array_name = 'site_config';

/*Проверяем, что сайт находится в тестовом режиме*/
$site_test_mode_value = $configch->test_mode();
if($site_test_mode_value){
	/*Получаем значения сессии*/
	$session_config_array = $_SESSION[$session_params_array_name];
	/*Если пустая, то задаем параметры по умолчанию*/
	if(!isset($session_config_array)){
		$config_page_tv_params_array = $configch->edit($config_page_id)->toArrayTV(true);
		session_start();
		$_SESSION[$session_params_array_name]=$config_page_tv_params_array;
	}
}