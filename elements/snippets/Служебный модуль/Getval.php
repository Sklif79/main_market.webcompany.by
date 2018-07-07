name:Getval
description:вывод значения Get параметра
======
<?php

/*
* Данный сниппет предназначен для вывода значения GET параметра с названием из параметра "getname"
* @author Rising13
*/
	$getname=(isset($getname)) ? $getname: $modx -> documentObject['getname'];//имя GET параметра
$getval= (isset($getval)) ? $getval: $_GET[$getname];//значение параметра GET
if(!empty($getval)){
	 $getval = $modx->db->escape($getval);
	return $getval;
}