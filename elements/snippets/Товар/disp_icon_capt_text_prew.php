name:disp_icon_capt_text_prew
description:Отображает иконку наличия товара в превью товара
======
<?php

/*
* Данный сниппет предназначен для вывода иконки и текста подписи наличия товара на странице с подробным описанием товара
* @author Rising13
*/

$iddoc=(isset($iddoc)) ? $iddoc: $modx -> documentObject['iddoc'];
if ($iddoc!=""){
	$iddoc2= $iddoc;
}else{
	$iddoc2=$modx -> documentIdentifier;//Получаем id документа
}

$product_availability_arr = $modx->getTemplateVar('product_availability', '*', $iddoc2);//Получаем значение TV параметра
$product_availability_val = $product_availability_arr[value];

/*В зависимости от значения выводим иконку с текстом*/
switch ($product_availability_val) {
	case 'in-stock':
	echo '<span class="in-stock"></span> В наличии';
	break;
	case 'not-available':
	echo '<span class="not-available"></span> Нет в наличии';
	break;
	case 'reservation':
	echo '<span class="reservation"></span> Под заказ';
	break;
}
