name:filter_return
description:Выводит форму фильтра в разных местах сайта и в разном виде в зависимости от конфигурации
======
<?php
<?php
/*
Выводит форму фильтра в разных местах сайта и в разном виде в зависимости от конфигурации.
Может быть горизонтальной или вертикальной
&type - оперделяет, какой вид фильтра выводит данный сниппет. Возможные значения: vertical,horizontal (Вертикальная и горизонтальная формы соответственно).
* @author Rising13 *
* Date: 22.06.2018 *
* ver. 1.0.1 *
*/
	
/*Подключаем классы, создаем объекты*/
include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/PhoneOption.php");
$configch = new ConfigChange($modx);
$phone = new PhoneOption();

/*Задаем значения по умолчанию*/
$idp=99;	//id страницы конфигурации
$tv_param_name = 'filter_type'; //название TV-параметра с конфигурацией
$default_type = 'vertical'; //Значение параметра с выводом
$return_str = '';

/*Получаем значения из вызова сниппета*/
$type = (isset($type)) ? $type: $modx -> documentObject['type'];	//Тип вывода формы фильтра
$type = (string) $type;

/*Определяем, является ли устройство мобильным*/
$is_mobile = $phone->pda();

/*Получаем значение опции "тестовый режим"*/
$site_test_mode_value = $configch->test_mode();

/*Проверяем, что сайт находится в тестовом режиме*/
if ($site_test_mode_value === true) {
	$filter_type_val = (string) $configch->get_config_session($tv_param_name);
}else{ //Для администратора
	$filter_type_val = (string) $configch->doc_get_value($idp,$tv_param_name);
}

$filter_type_val = (!empty($filter_type_val)) ? $filter_type_val : $default_type;


/*Если мобильная версия, то фильтр горизонтальный*/
if($is_mobile){
	$filter_type_val = 'horizontal';
}

if($filter_type_val === $type){
	$snippet_name = 'eFilter';
	$snippet_params = array(
		'ajax' => '1',
		'css' => '0',
		'cfg' => 'myconfig'
	);
	$snippet_result = $modx->runSnippet($snippet_name, $snippet_params);//делаем обращение к сниппету c нужными параметрами
	$return_str = $snippet_result . PHP_EOL . '[+eFilter_form+]';
	return $return_str;
}
