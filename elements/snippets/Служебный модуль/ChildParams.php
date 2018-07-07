name:ChildParams
description:Параметры дочернего элемента
======
<?php

/*
Выводит указанный параметр для дочерней страницы страницы с номером, указанным в поле "child_nmr" для родительской страницы с id введенным в поле "iddoc" по введенному id, если id страницы не введено, то выводит для текущей страницы
* @author Rising13 *
* ver. 1.0.0 *
*/
	$iddoc=(isset($iddoc)) ? $iddoc: $modx -> documentObject['iddoc'];	//id страницы
$field = (isset($field)) ? $field: $modx -> documentObject['field'];	//Требуемое поле
$child_nmr = (isset($child_nmr)) ? $child_nmr: $modx -> documentObject['child_nmr'];	//Нумерация элементов с единицы

if (empty($iddoc)) {
	$iddoc=$modx -> documentIdentifier;
}

if (empty($child_nmr)) {
	$child_nmr = 0;
}else{
	$child_nmr = (int) $child_nmr;
	if($child_nmr > 0){
		$child_nmr = $child_nmr - 1;
	}else{
		$child_nmr = 0;
	}
}

$actchildrens = $modx->getActiveChildren($iddoc);
if(isset($actchildrens) && !empty($actchildrens)){
	$field_value = $actchildrens[$child_nmr][$field];
	if(isset($field_value) && !empty($field_value)) {
		return $field_value;
	}	
}