name:contacts_svg_icon
description:Выводит иконки в svg на странице контакты
======
<?php

$type=(isset($type)) ? $type: $modx -> documentObject['type'];	//тип иконки
$file_icon_address = 'http://market.webcompany.by/assets/templates/market/img/contact-location.svg';
$file_icon_phone = 'http://market.webcompany.by/assets/templates/market/img/contact-phone.svg';
$file_icon_mail = 'http://market.webcompany.by/assets/templates/market/img/contact-phone.svg';

$svg_str_icon = '';
switch ($type) {
	case 'address':
		$svg_str_icon = file_get_contents($file_icon_address);
		break;
	case 'phone':
		$svg_str_icon = file_get_contents($file_icon_phone);
		break;
	case 'mail':
		$svg_str_icon = file_get_contents($file_icon_mail);
		break;
}
return $svg_str_icon;