name:eFilter_ids_wrap
description:<b>1.0</b> выводит id товаров для сортировки
======
<?php
<?php
/**
 * eFilter_ids_wrap
 *
 * выводит id товаров после фильтрации, для сортировки
 *
 * @category 	snippet
 * @version 	1.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @author      Rising13
 * @lastupdate  11/04/2018
 */
	
$eFilter_ids_value = $_DocLister->getCFGDef('eFilter_ids');
if(!empty($eFilter_ids_value)){
 $data['placeholders']['eFilter_ids'] = $eFilter_ids_value;
}
return $data;
