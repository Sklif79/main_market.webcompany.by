name:product_reviews_load
description:Аяксовая подгрузка отзывов в карточке товара
======
<?php

$dit="";	

$start=$modx->db->escape($_GET['start']);//получаем номер услуги, с которой будем выводить; экранируем потенциально-опасные символы
$parent=$modx->db->escape($_GET['parent']);//получаем id родительского элемента, в котором размещены товары; экранируем потенциально-опасные символы
$tpl=$modx->db->escape($_GET['tpl']);//получаем название чанка шаблона, в котором размещены товары; экранируем потенциально-опасные символы

//значения по умолчанию
if (!isset($start)) $start=3;
if (!isset($parent)) $parent=1161;
if (!isset($tpl)) $tpl='review_prew_tpl';

$result = $modx->runSnippet('DocLister',   
									array( 'id' => 'product_reviews',
										  'tpl' => $tpl,
										  'tvPrefix' => '',
										  'tvList' => 'position_review,original_review_doc',
										  'parents' => $parent,
										  'orderBy' => 'menuindex ASC',	  
										  'offset'=> $start
										 ));//делаем обращение к сниппету DocLister c нужными параметрами

echo $result;// выводим результат