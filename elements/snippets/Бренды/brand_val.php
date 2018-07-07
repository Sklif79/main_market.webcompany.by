name:brand_val
description:Вывод иконки бренда в товаре
======
<?php

/**
* @desc Выводит логотип бренда по введенному id, если id страницы не введено, то выводит параметр для текущей страницы
*
* @author Rising13
* @version 1.0.0 (20.06.2016)
*
* @param iddoc {integer} - id документа. По умолчанию - родитель текущего документа / id document, if not specified, it will be the parent of the current document. Default: the parent of the current document.

* @copyright 2017, Webcompany
* http://webcompany.by
*/
	$iddoc=(isset($iddoc)) ? $iddoc: $modx -> documentObject['iddoc'];	//id документа, если не задано, то будет текущий документ

$tv_name = 'product_brand_select'; //Название TV-параметра со значением бренда для страницы товара
$tpl_name = 'brand_tpl';

if (!isset($iddoc) || empty($iddoc)){
	$iddoc=$modx -> documentIdentifier;
}
$brand_id_array = $modx->getTemplateVar($tv_name, 'name', $iddoc);

$brand_id = $brand_id_array[value];

if (isset($brand_id) && !empty($brand_id)){
	$snippet_name = 'DocLister';
	$arrparams = array('id' => 'brand','idType' => 'documents','documents' => $brand_id,'depth' => '0','tvPrefix' => '','tvList' => 'brand_img','tpl'=>$tpl_name,'sortType' => 'doclist','orderBy'=>'pagetitle ASC', 'total' => '1', 'noneWrapOuter' => '0', 'dateFormat'=>'%d.%m.%Y');
	return $modx->runSnippet($snippet_name,$arrparams);
}