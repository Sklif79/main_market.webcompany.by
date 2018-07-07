name:in_basket
description:Добавляет класс in-basket для того, чтоб отметить, что товар в корзине
======
<?php
<?php
/* Предназначен для того, чтоб кнопка "В корзину" менялась на кнопку "В корзине" */
/****
передаваемые параметры
$iddoc - id ресурса, который нужно проверять, string
$in_basket_class - класс, который нужно добавить при наличии товара в корзине
****/
	
/*Получение праметров*/	
$iddoc = (isset($iddoc)) ? $iddoc: $modx -> documentObject['iddoc'];	//id документа, если не задано, то будет текущий документ
$in_basket_class = (isset($in_basket_class)) ? $in_basket_class: $modx -> documentObject['in_basket_class'];	//id документа, если не задано, то будет текущий документ

/*Значения по умолчанию*/
if (!isset($iddoc) || empty($iddoc)){
	$iddoc=$modx -> documentIdentifier;
}

if (!isset($in_basket_class) || empty($in_basket_class)){
	$in_basket_class='in-basket';
}

$shk_product_id_array = array();


/*Получаем массив id заказанных товаров*/
if(isset($_SESSION['purchases']) && !empty($_SESSION['purchases'])){
	$shk_purchases_array = unserialize($_SESSION['purchases']); //Получаем массив с заказами.
	$shk_product_id_array = array_column($shk_purchases_array,0);
}

/*Проверяем есть ли в массиве заазов id и выводим класс*/
if(!empty($shk_product_id_array) && in_array($iddoc,$shk_product_id_array)){
	return $in_basket_class;
}