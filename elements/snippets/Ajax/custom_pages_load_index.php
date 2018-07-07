name:custom_pages_load_index
description:Аяксовая подгрузка страниц пользователя на главной
======
<?php

/*Аяксовая подгрузка страниц пользователя на главной*/
$start=$modx->db->escape($_GET['start']);//получаем номер услуги, с которой будем выводить; экранируем потенциально-опасные символы
$parent=$modx->db->escape($_GET['parent']);//получаем id родительского элемента, в котором размещены товары; экранируем потенциально-опасные символы

//значения по умолчанию
if (!isset($start) && !empty($start)) $start=8;
if (!isset($parent) && !empty($parent)) $parent=1;

$start=8;
$parent=1;

$custom_pages_result = $modx->runSnippet('ddGetMultipleField',   
									array( 'inputString_docField' => 'custom_pages_main',
										  'inputString_docId' => $parent,	  
										  'startRow'=> $start,
										  'rowTpl'=> 'custom_pages_main_tpl',
										 ));//делаем обращение к сниппету ddGetMultipleField c нужными параметрами

return $custom_pages_result;// выводим результат