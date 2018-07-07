name:header_menu_active
description:Выводит класс при активном пункте меню
======
<?php

	/*
Выводит подменю для страницы с id введенным в поле "idp" по введенному id, если стоит параметр выводить подменю addSubmenu
* @author Rising13 *
* ver. 1.0.0 *
*/
	$idp=(isset($idp)) ? $idp: $modx -> documentObject['idp'];	//id страницы
$addClass=(isset($addClass)) ? $addClass: $modx -> documentObject['addClass'];	//Добавляемый класс
if($addClass==''){
	$addClass = 'active';
}

if ($idp!='') {
	$pattern = '/^\[~(\d+)~\]$/';
	if(preg_match($pattern, $idp, $matches)){
		$pageid = $matches[1];
		$docid = $modx -> documentIdentifier;
		if($pageid==$docid){
			return $addClass;
		}
	}
}