name:contact_city_select
description:Вывод городов для селекта
======
<?php

$iddoc=(isset($iddoc)) ? $iddoc: $modx -> documentObject['iddoc'];	//id страницы

if (empty($iddoc)) {
	$iddoc=$modx -> documentIdentifier;
}
$iddoc = (int) $iddoc;
$tv_name = 'dialers_contacts_info';
$snippet_name = 'ddGetMultipleField';
$arrparams = array('inputString_docField' => $tv_name, 'inputString_docId' => $iddoc,'columns' =>'5', 'outputFormat' => 'array');

$snippet_result_arr = $modx->runSnippet($snippet_name,$arrparams);
if(!empty($snippet_result_arr)){
	$result = '';
	$city_arr = array();
	foreach($snippet_result_arr as $city_val){
		$city_arr[] = $city_val[0];
	}
	$city_arr = array_unique($city_arr);
	sort($city_arr, SORT_NATURAL | SORT_FLAG_CASE);

	foreach($city_arr as $city){
		$result.="<option value=\"{$city}\">{$city}</option>";
	}
	return $result;
}