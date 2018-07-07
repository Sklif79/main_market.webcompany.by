name:class_order_product_add
description:<b>1.1</b> выводит класс, отключающий отображение элементов добавить в корзину. Для карточки товара
======
<?php
<?php
/**
 * class_order_product_add
 *
 * выводит класс, отключающий отображение элементов добавить в корзину.
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
$addClass = 'order'; //Добавляемый класс css
$order_class = '';

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
	$order_class = $addClass; //Присваеваем нужный класс
}

/*Выводим информацию*/
return $order_class;
