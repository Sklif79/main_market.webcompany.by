name:FirstChildParams
description:Параметры первого дочернего элемента
======
<?php

/*
Выводит указанный параметр для страницы с id введенным в поле "iddoc" по введенному id, если id страницы не введено, то выводит для текущей страницы
* @author Rising13 *
* ver. 1.0.0 *
*/
	$iddoc=(isset($iddoc)) ? $iddoc: $modx -> documentObject['iddoc'];	//id страницы
$field = (isset($field)) ? $field: $modx -> documentObject['field'];	//Требуемое поле

if (empty($iddoc)) {
	$iddoc=$modx -> documentIdentifier;
}	
$actchildrens = $modx->getActiveChildren($iddoc);
if(isset($actchildrens) && !empty($actchildrens)){
	$field_value = $actchildrens[0][$field];
	if(isset($field_value) && !empty($field_value)) {
		return $field_value;
	}	
}