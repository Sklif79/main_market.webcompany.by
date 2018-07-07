name:getParentIds
description:Получение родителей
======
<?php

	/**
* @desc Выводит родителей по введенному id, если id страницы не введено, то выводит родителей для текущей страницы
*
* @author Rising13
* @version 1.0.0 (20.06.2016)
*
* @param iddoc {integer} - id документа. По умолчанию - текущий документ
* @param height {integer} - глубина поиска родителей

* @copyright 2016, Webcompany
* http://webcompany.by
*/
	$iddoc=(isset($iddoc)) ? $iddoc: $modx -> documentObject['iddoc'];	//id документа, если не задано, то будет родитель текущего документа
$height=(isset($height)) ? $height: $modx -> documentObject['height'];	//название необходимого параметра страницы или TV-параметра. Если не задано, то выведет контент
$exclude_id=(isset($exclude_id)) ? $exclude_id: $modx -> documentObject['exclude_id'];	//id родителей, для которых выводить верхний уровень равным 0. Строка с перечнем id через запятую 


if ($height==""){
	$height=1;
}

if ($iddoc!=""){
	$idpar2= $iddoc;
}else{
	$iddoc=$modx -> documentIdentifier;
}

if ($exclude_id==""){
	$exclude_id='';
}

$parents_arr=$modx -> getParentIds($iddoc,$height);
if(isset($parents_arr) && !empty($parents_arr)){
	$parent_last = end($parents_arr);
	if(!empty($exclude_id)){
		$exclude_id_array = explode(',',$exclude_id);
		if(!in_array($parent_last, $exclude_id_array)){
			$parent_last = 0;
		}
	}
	return $parent_last;
}else{
	return $iddoc;
}