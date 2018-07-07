name:filesize
description:Выводит размер файла
======
<?php

/*
Выводит размер файла, имя и адрес которого указан в поле filename
* @author Rising13 *
* ver. 1.0.1 *
*/
	
	$filename=(isset($filename)) ? $filename: $modx -> documentObject['filename'];	//имя файла
if ($filename!="" && file_exists($filename)) {
	$bytes = filesize($filename);
	$decimals = 2;
	
	$sz = array('Б','К','М','Г','Т','П');
	$factor = floor((strlen($bytes) - 1) / 3);
	$key = $factor==0 ? " " : " ".@$sz[$factor];
	return sprintf("%.{$decimals}f", $bytes / pow(1024, $factor)) . $key.'Б';
}