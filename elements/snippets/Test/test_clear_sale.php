name:test_clear_sale
description:Очистим вывод скидок там, где не стоят метки
======
<?php
<?php
$sale_path = 'assets/import/sale.csv';
$sale_persent_path = 'assets/import/sale_persent.csv';

if (($handle = fopen(MODX_BASE_PATH.$sale_path, "r")) !== FALSE) {
	$sale_id_array = [];
    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
		$sale_id_array[] = $data[0];
    }
    fclose($handle);
}


if (($handle2 = fopen(MODX_BASE_PATH.$sale_persent_path, "r")) !== FALSE) {
	$sale_persent_id_array = [];
    while (($data2 = fgetcsv($handle2, 1000, ",")) !== FALSE) {
		$sale_persent_id_array[] = $data2[0];
    }
    fclose($handle2);
}

$result = array_diff($sale_persent_id_array, $sale_id_array);
$result_str = implode(',',$result);

/*$query_str = "DELETE FROM `market_site_tmplvar_contentvalues` WHERE `market_site_tmplvar_contentvalues`.`tmplvarid` = 135 AND `market_site_tmplvar_contentvalues`.`contentid` IN ({$result_str})";

$result = $modx->db->query($query_str);*/
var_dump($result_str);
