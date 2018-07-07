name:footer_select_load
description:Вывод выбранного варианта нижней части сайта
======
<?php
<?php
/*
Выводим выбранный вариант верхней части сайта
* @author Rising13 *
* ver. 1.0.1 *
* Date: 22.06.2018 *
*/

	/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
	include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);

/*Задаем значения по умолчанию*/
$idp=99;	//id страницы конфигурации
$tv_param_name = 'site_footer_config'; //название TV-параметра с конфигурацией
$default_footer = 'footer_default'; //Название чанка по умолчанию
$noshadow_chunk_name_array = array('footer_v2'=>'footer-var-2','footer_v3'=>'footer-var-3','footer_v4'=>'footer-var-4','footer_v5'=>'footer-theme_gray','footer_v6'=>'footer-var-2 footer-theme_dark'); //Список названий чанков, для которых нужно добавить класс
$add_class = '';
$footer_chunk_value = '';

/*Получаем значение опции "тестовый режим"*/
$site_test_mode_value = $configch->test_mode();

/*Проверяем, что сайт находится в тестовом режиме*/
if ($site_test_mode_value === true) {
	$footer_chunk_name = (string) $configch->get_config_session($tv_param_name);
}else{ //Для администратора
	$footer_chunk_name = (string) $configch->doc_get_value($idp,$tv_param_name);
}

$footer_chunk_name = (!empty($footer_chunk_name)) ? $footer_chunk_name : $default_footer;

if(array_key_exists($footer_chunk_name,$noshadow_chunk_name_array)){
	$add_class = $noshadow_chunk_name_array[$footer_chunk_name];
}else{
	$add_class = '';
}

$modx->setPlaceholder('footer_add_class',$add_class);

$footer_chunk_value = $modx->getChunk($footer_chunk_name);//Получаем значение чанка
return $footer_chunk_value;
