name:filter_prod_count
description:Количество товаров фильтрация по TV-параметру
======
<?php

$tv_name=(isset($tv_name)) ? $tv_name: $modx -> documentObject['tv_name'];
$tv_name=$modx->db->escape($tv_name);//получаем название TV-параметра для фильтрации, с которой будем выводить; экранируем потенциально-опасные символы
$tv_value=(isset($tv_value)) ? $tv_value: $modx -> documentObject['tv_value'];
$tv_value=$modx->db->escape($tv_value);//получаем название TV-параметра для фильтрации, в котором размещены товары; экранируем потенциально-опасные символы

if(empty($tv_name)){
	$tv_name = 'novelty';
}
if(empty($tv_value)){
	$tv_value = '1';
}

$tv_table_val = $modx->getFullTableName('site_tmplvar_contentvalues');
$tv_table_name = $modx->getFullTableName('site_tmplvars');
$query_1 = "SELECT COUNT(c.contentid) FROM {$tv_table_val} AS c LEFT OUTER JOIN {$tv_table_name} AS t ON c.tmplvarid = t.id WHERE t.name = '{$tv_name}' AND c.value = '{$tv_value}'";
$query_result = $modx->db->query($query_1);
$query_result_count = $modx->db->getValue($query_result);
return $query_result_count;