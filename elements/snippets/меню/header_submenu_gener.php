name:header_submenu_gener
description:вывод подменю для меню под логотипом
======
<?php
<?php
/*
Выводит подменю для страницы с id введенным в поле "idp" по введенному id, если стоит параметр выводить подменю addSubmenu
* @author Rising13 *
* ver. 1.0.0 *
*/
$idp=(isset($idp)) ? $idp: $modx -> documentObject['idp'];	//id страницы
$addSubmenu=(isset($addSubmenu)) ? $addSubmenu: $modx -> documentObject['addSubmenu'];	//Выводить подменю

if ($idp!="" && !empty($addSubmenu)) {
	$pattern = '/^\[~(\d+)~\]$/';
	if(preg_match($pattern, $idp, $matches)){
		$pageid = $matches[1];
		$isfolderval = $modx->getDocument($pageid,'isfolder');
		if($isfolderval[isfolder]==1){
			$snip_name = 'DLMenu';
			$arrparams=array('parents' => $pageid, 'maxDepth' => '2', 'filters' => 'AND(content:isfolder:=:1)', 'levelClass' => 'level2','outerClass' => 'menu-sub','innerClass' => 'menu-sub');
			$submenu_val = $modx->runSnippet($snip_name,$arrparams);
			return $submenu_val;
		}
	}
}
