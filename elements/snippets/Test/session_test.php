name:session_test
description:вывод значений сессии
======
<?php
<?php
/*Подключаем библиотеку MODxAPI, создаем объект*/
	include_once(MODX_BASE_PATH . "assets/lib/MODxAPI/modResource.php");
$doc = new modResource($modx);

/*задаем требуемые функции*/
if (!function_exists(test_mode)) {
	function test_mode($doc,$config_page_id,$test_mode_tv_name)
	{
		$site_test_mode_value_array = $doc->edit($config_page_id)->get($test_mode_tv_name);
		$site_test_mode_value = (bool)$site_test_mode_value_array[0];
		return $site_test_mode_value;
	}
}

/*Задаем параметры по умолчанию*/
$config_page_id = 99;
$session_params_array_name = 'site_config';
$test_mode_tv_name = 'site_test_mode';


/*Проверяем, что сайт находится в тестовом режиме*/
$site_test_mode_value = test_mode($doc,$config_page_id,$test_mode_tv_name);
if($site_test_mode_value){
	/*Получаем значения сессии*/
	$session_config_array = $_SESSION[$session_params_array_name];
	/*Если пустая, то задаем параметры по умолчанию*/
	if(!isset($session_config_array)){
		$config_page_tv_params_array = $doc->edit($config_page_id)->toArrayTV(true);
		session_start();
		$_SESSION[$session_params_array_name]=$config_page_tv_params_array;
	}
}
