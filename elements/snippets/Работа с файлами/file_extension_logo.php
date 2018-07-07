name:file_extension_logo
description:получаем расширение файла и выводим соответствующую иконку
======
<?php

/*
* Данный сниппет предназначен для добавления соответствующего класса к ссылке на файл для довавления ссответствующей иконки Имя файла берется из параметра "filename"
* @author Rising13
*/



	$filename= (isset($filename)) ? $filename: $modx -> documentObject['filename'];


if (file_exists($filename)) {

	$path_parts = pathinfo($filename);
	$file_extension = $path_parts['extension'];
	$file_extension =  mb_strtolower($file_extension, 'UTF-8');

	switch ($file_extension) {
		case 'pdf':
		echo '<img src="assets/templates/market/img/file_icon/pdf.png" alt="'.$file_extension.'">';
		break;

		case 'doc':
		case 'docx':
		case 'docm':
		case 'dotx':
		case 'dot':
		case 'dot':
		echo '<img src="assets/templates/market/img/file_icon/doc.png" alt="'.$file_extension.'">';
		break;

		case 'xls':
		case 'xlsx':
		case 'xlsm':
		case 'xltx':
		case 'xlt':
		case 'xltm':
		echo '<img src="assets/templates/market/img/file_icon/xls.png" alt="'.$file_extension.'">';
		break;

		default:
		echo '<img src="assets/templates/market/img/file_icon/other.png" alt="'.$file_extension.'">';
	}
}
