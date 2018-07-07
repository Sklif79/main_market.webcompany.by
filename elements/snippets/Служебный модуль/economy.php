name:economy
description:Расчет экономии и вывод соответствующего блока
======
<?php

	/*
Выводит количество дочерних элементов для страницы с id введенным в поле "idp" по введенному id, если id страницы не введено, то выводит количество дочерних элементов для родителя текущей страницы
* @author Rising13 *
* ver. 1.0.0 *
*/
	$new_price=(isset($new_price)) ? $new_price: $modx -> documentObject['new_price'];//Цена со скидкой
$old_price = (isset($old_price)) ? $old_price: $modx -> documentObject['old_price'];//Цена без скидки
$tpl = (isset($tpl)) ? $tpl: $modx -> documentObject['tpl'];//чанк шаблона вывода, если не указан, то выведет напрямую

if(isset($new_price) && !empty($new_price) && isset($old_price) && !empty($old_price)){
	$new_price = (float) $new_price;
	$old_price = (float) $old_price;
	$economy_price = round(($old_price - $new_price),2);
	$economy_price_format = number_format($economy_price, 2, '.', ' ');	
	if(isset($tpl) && !empty($tpl)){
		return $modx->parseChunk($tpl, array( 'economy' => $economy_price_format), '[+', '+]' );
	}else{
		return $economy_price_format;
	}
}