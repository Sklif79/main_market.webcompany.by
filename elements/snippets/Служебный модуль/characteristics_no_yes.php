name:characteristics_no_yes
description:Выводит изображения крестика или галочки
======
<?php

	/*
Выводит изображения крестика или галочки если на входе значения N или Y соответственно. Иначе просто выводит занчение.
* @author Rising13 *
* ver. 1.0.0 *
*/
	$inval=(isset($inval)) ? $inval: $modx -> documentObject['inval'];//Входящие данные

switch ($inval) {
	case 'N':
		echo '<img src="assets/templates/market/img/no-ico.png" alt="">';
		break;

	case 'Y':
		echo '<img src="assets/templates/market/img/yes-ico.png" alt="">';
		break;

	default:
		echo $inval;
}