name:disp_icon_capt_text_avail
description:Отображает иконку наличия товара на странице с подр опис товара
======
<?php

/*
* Данный сниппет предназначен для вывода иконки и текста подписи наличия товара на странице с подробным описанием товара
* @author Rising13
*/

$iddoc=$modx -> documentIdentifier;//Получаем id документа

$product_availability_arr = $modx->getTemplateVar('product_availability', '*', $iddoc);//Получаем значение TV параметра
$product_availability_val = $product_availability_arr[value];

/*В зависимости от значения выводим иконку с текстом*/
switch ($product_availability_val) {
	case 'in-stock':
	echo '<img src="assets/templates/market/img/sprite/in-stock.png" alt=""/> В наличии';
	break;
	case 'not-available':
	echo '<img src="assets/templates/market/img/sprite/not-available.png" alt=""/> Нет в наличии';
	break;
	case 'reservation':
	echo '<img src="assets/templates/market/img/sprite/reservation.png" alt=""/> Под заказ';
	break;
}
