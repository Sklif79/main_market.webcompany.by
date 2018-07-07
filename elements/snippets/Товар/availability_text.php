name:availability_text
description:Выводит текст о наличии товара по значению класса
======
<?php

	/*Получаем текст о наличии товара*/
	$avail_class = (isset($avail_class)) ? $avail_class: $modx -> documentObject['avail_class'];	//Значение класса
$avail_text = '';
switch ($avail_class) {
	case 'in-stock':
		$avail_text = 'В наличии';
		break;
	case 'not-available':
		$avail_text = 'Нет в наличии';
		break;
	case 'reservation':
		$avail_text = 'Под заказ';
		break;
}
return $avail_text;