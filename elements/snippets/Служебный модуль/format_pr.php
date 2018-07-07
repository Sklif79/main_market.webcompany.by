name:format_pr
description:Разбиение цены по разрядам со вставкой пробелов между разрядами
======
<?php
<?php
/*Выводит форматированные значения чисел с разбиением пробелом по разрядам*/
	/*Author: Rising13*/
	/*ver 1.0.1*/
	$format_pr=(isset($format_pr)) ? $format_pr : $modx -> documentObject['format_pr'];	//число, которое нужно форматированно вывести
if (empty($format_pr)){
	$format_pr = 0;
}else{
	$format_pr = str_replace(' ', '', $format_pr);
	$format_pr = str_replace(',', '.', $format_pr);
	$format_pr = floatval($format_pr);
	$format_pr = round($format_pr,2);
}
return number_format($format_pr, 2, '.', ' ');
