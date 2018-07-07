name:test
description:
======
<?php
<?php
/*include_once(MODX_BASE_PATH."assets/lib/MODxAPI/modResource.php");
$doc=new modResource($modx);
$test =$doc->edit(99)->set('menutitle', 'Конфиг')->save();
var_dump($test);*/

/*$table_tv=$modx->getFullTableName('site_tmplvar_contentvalues');
$tv_val_query = $modx->db->query("SELECT * FROM {$table_tv} ORDER BY {$table_tv}.tmplvarid ASC");
$tv_val_array = $modx->db->makeArray($tv_val_query);

//$last_names = array_column($tv_val_array, 'tmplvarid', 'id');
$array_vals = [];
foreach($tv_val_array as $str_value){
	$array_vals[$str_value['id']]['tmplvarid'] = $str_value['tmplvarid'];
	$array_vals[$str_value['id']]['contentid'] = $str_value['contentid'];
}
$old_val = null;
$old_key = null;
foreach ($array_vals as $key_as => $val_this){
	if($val_this == $old_val){
		print_r($old_key);
		echo "&nbsp;";
		print_r	($old_val);
		echo "<br>";
	}
	$old_val = $val_this;
	$old_key = $key_as;
}
*/
	
include_once(MODX_BASE_PATH."assets/libs/Rising13_lib/ConfigChange.php");
$configch=new ConfigChange($modx);

$test_mode = $configch->test_mode();
$tv_names = $configch->tv_names_from_page_array();

$tv_params_exclude_array = array('haskeywords', 'hasmetatags', 'sitemap_exclude', 'site_test_mode', 'bestseller ', 'novelty', 'sale', 'display_on_index', 'special_offer_on_index', 'add_header_sertif_check', 'noIndex', 'catalog_in_index', ' no_submenu_catalog_index_prew', 'no_less_cache', 'projects_right_block_visible', 'projects_right_block_button_visible', 'service_inner_v20_right_block_visible', 'specifications_prod_hidden', 'projects_all_chars_ancor_link', 'size', 'color', 'type_of_fabric', 'dress_style', 'test', 'Instock_check', 'Type_of_clothing', 'id');

$clear_array = array_diff($tv_names,$tv_params_exclude_array);


print_r($tv_names);

//var_dump($configch->table_name_snippet);

var_dump($configch->disable_snippet(37,1));
