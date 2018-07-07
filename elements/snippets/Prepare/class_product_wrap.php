name:class_product_wrap
description:<b>1.0</b> выводит класс, который определяет как выглядит контейнер товара
======
<?php
<?php
/**
 * class_product_wrap
 *
 * выводит класс, который определяет как выглядит контейнер товара
 *
 * @category 	snippet
 * @version 	1.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @author      Rising13
 * @lastupdate  12/01/2018
 */
	
$ownerClass_value = $_DocLister->getCFGDef('ownerClass');
if(!empty($ownerClass_value)){
 $data['placeholders']['dl.class'] = $ownerClass_value;
}
return $data;
