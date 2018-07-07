name:url_generate
description:Генерирует url страницы
======
<?php
<?php
/**
* @desc Выводит url страницы по введенному id, если id страницы не введено, то выводит параметр для текущей страницы
*
* @author Rising13
* @version 1.0.0 (24.04.2018)
*
* @param iddoc {integer} - id документа. По умолчанию - id текущего документа / id document, if not specified, it will be the id of the current document. Default: the id of the current document.

* @copyright 2018, Webcompany
* http://webcompany.by
*/
	
$iddoc=(isset($iddoc)) ? $iddoc: $modx -> documentObject['iddoc'];	//id документа, если не задано, то будет текущий документ

if (!isset($iddoc) || empty($iddoc)){
	$iddoc=$modx -> documentIdentifier;
}

$url = $modx->makeUrl($iddoc);

return $url;
