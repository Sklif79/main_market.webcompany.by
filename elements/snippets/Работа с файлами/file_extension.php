name:file_extension
description:получаем название расширения файла
======
<?php

	/*
* Данный сниппет предназначен для вывода расширения файла. Имя файла берется из параметра "filename"
* @author Rising13
*/


	$filename= (isset($filename)) ? $filename: $modx -> documentObject['filename'];


if (file_exists($filename)) {

	$path_parts = pathinfo($filename);
	$file_extension = $path_parts['extension'];
	$file_extension =  mb_strtolower($file_extension, 'UTF-8');

	echo ($file_extension);
}
