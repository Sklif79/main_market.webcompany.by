name:phone_clear
description:генерация чистого телефона без различных элементов
======
<?php

/*
	Выводит номер телефона без пробелов, тире и тд
	*/
	$phone_in=(isset($phone_in)) ? $phone_in: $modx -> documentObject['phone_in'];	//Исходный номер телефона
if (!empty($phone_in)) {
	$phone_in = strip_tags($phone_in);
	$Replaceable = array(' ','-','_','(',')','.',',','#',':',';');
	$phone_clear_out = str_replace($Replaceable,'',$phone_in);
	return $phone_clear_out;
}