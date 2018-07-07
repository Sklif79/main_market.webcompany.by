name:services_load_index
description:Аяксовая подгрузка услуг на главной
======
<?php

$dit="";	

$start=$modx->db->escape($_GET['start']);//получаем номер услуги, с которой будем выводить; экранируем потенциально-опасные символы
$parent=$modx->db->escape($_GET['parent']);//получаем id родительского элемента, в котором размещены товары; экранируем потенциально-опасные символы
$serv_tpl=$modx->db->escape($_GET['serv_tpl']);//получаем название чанка шаблона, в котором размещены товары; экранируем потенциально-опасные символы

//значения по умолчанию
if (!isset($start)) $start=8;
if (!isset($parent)) $parent=35;
if (!isset($serv_tpl)) $serv_tpl='services_index_tpl';

$ditto_upl_serv = $modx->runSnippet('DocLister',   
									array( 'id' => 'services_load',
										  'tpl' => $serv_tpl,
										  'tvPrefix' => '',
										  'tvList' => 'services_index_prew_img',
										  'parents' => $parent,
										  'orderBy' => 'parent ASC,menuindex ASC',	  
										  'offset'=> $start,
										  'prepare'=>'preparethumb',
										  'phumb_img'=>'services_index_prew_img',
										  'phumb_options'=>'w=300,h=250,f=png,q=95,zc=C,bg=ffffff'
										 ));//делаем обращение к сниппету ditto c нужными параметрами

echo $ditto_upl_serv;// выводим результат