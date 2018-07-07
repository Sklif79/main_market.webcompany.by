name:dealers_load_contacts
description:Подгрузка дилеров
======
<?php

$region_id=$modx->db->escape($_GET['region_id']);//получаем id страницы выбранной области; экранируем потенциально-опасные символы
$parent=$modx->db->escape($_GET['parent']);//получаем id родительского каталога; экранируем потенциально-опасные символы
$filter = $modx->db->escape($_GET['filter']);//получаем id родительского каталога; экранируем потенциально-опасные символы

if (!isset($parent) || empty($parent)) $parent=1180;
//значения по умолчанию
if(isset($region_id) && !empty($region_id)){
	$snippet_name = 'DocLister';
	$arrparams = array('id' => 'dealers_group','idType'=>'documents','parents' => $parent,'documents' => $region_id,'depth' =>0, 'tvPrefix' => '', 'tvList' => '', 'tpl' => 'dealers_group_tpl', 'orderBy' => 'menuindex ASC', 'total' => 'all', 'noneWrapOuter' => 0, 'dd_filter' => $filter, 'prepare' => 'dealers_city_dd_filter');
}else{
	$snippet_name = 'DocLister';
	$arrparams = array('id' => 'dealers_group', 'parents' => $parent,'depth' =>0, 'tvPrefix' => '', 'tvList' => '', 'tpl' => 'dealers_group_tpl', 'orderBy' => 'menuindex ASC', 'total' => 'all', 'noneWrapOuter' => 0);
}
$result = $modx->runSnippet($snippet_name,$arrparams);
return $result;