name:childcount
description:Количество активных дочерних элементов
======
<?php

	/*
Выводит количество дочерних элементов для страницы с id введенным в поле "idp" по введенному id, если id страницы не введено, то выводит количество дочерних элементов для родителя текущей страницы
* @author Rising13 *
* ver. 1.0.1 *
*/
	$idp=(isset($idp)) ? $idp: $modx -> documentObject['idp'];	//id страницы
if ($idp!="") {
	$idpar= $idp;
}else{
	$idp=$modx -> documentIdentifier;
	$idpar1 = $modx-> getParent ($idp,1,id);
	$idpar= $idpar1[id];
}
$idpar_arr = explode(',',$idpar);
if(!empty($idpar_arr)){
	$actchildrens_count = 0;
	foreach($idpar_arr as $idpar_val){
		$actchildrens = $modx->getActiveChildren($idpar_val);
		$actchildrens_count+=count($actchildrens);
	}

}else{
	$actchildrens_count = 0;
}

echo $actchildrens_count;