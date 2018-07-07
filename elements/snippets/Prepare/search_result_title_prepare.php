name:search_result_title_prepare
description:Создание вывода информации для заголовка
======
<?php
<?php
/*Получаем информацию для вывода в заголовок блока*/
	$to = 0;
$from = 0;
$count = 0;

if(!empty($data['dl.to'])){
	$to=(int) $data['dl.to'];
}

if(!empty($data['dl.count'])){
	$count=(int) $data['dl.count'];
}

if(!empty($data['dl.from'])){
	$from=(int) $data['dl.from'];
}

if($count==0){
	$to = 0;
	$from = 0;
}

$title_arr = array(
	'to' => $to, 
	'count' => $count, 
	'from' => $from
); 	
$modx->toPlaceholders($title_arr,'search.');
return $data;
