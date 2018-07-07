name:parser
description:Парсер товаров
======
<?php

/*Конфигурация*/	
$parsing_urls = 'https://market.yandex.by/catalog/54469/list?hid=90490&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/54461/list?hid=166068&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/54804/list?hid=6269371&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/60896/list?hid=512743&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/54842/list?hid=90408&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/54836/list?hid=90404&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/54957/list?hid=90599&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1, 
https://market.yandex.by/catalog/54913/list?hid=90566&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1&page=2,
https://market.yandex.by/catalog/54928/list?hid=90570&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1, 
https://market.yandex.by/catalog/54977/list?hid=90577&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1, 
https://market.yandex.by/catalog/54979/list?hid=734595&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/57298/list?hid=7811909&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/61408/list?hid=7812201&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/61402/list?hid=7812208&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/57423/list?hid=7814991&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1,
https://market.yandex.by/catalog/55639/list?hid=7812200&track=fr_ctlg&local-offers-first=0&deliveryincluded=0&onstock=1'; //url нужнs[ страниц

$parsing_file_path= 'assets/libs/parser/parsing_page_cache/'; //путь к сохранению файлов

$parsing_urls_arr = explode(',',$parsing_urls);

if(isset($parsing_urls_arr) && !empty($parsing_urls_arr)){
$i=1;
foreach($parsing_urls_arr as $pu){
	$parsing_file_name = $parsing_file_path.'parse'.$i.'txt';
	$content = file_get_contents(urlencode($pu));
	file_put_contents($parsing_file_name, $content);
	$i++;
	sleep(2);
}

/*Подключаем библиотеку*/
include_once 'assets/libs/simplehtmldom_1_5/simple_html_dom.php';
//include_once 'assets/libs/parser/parser.php';

/*Скачанная страница*/
//$download_page = file_get_html($parsing_url);
//$download_page -> clear();
/*Получаем массив товаров*/

//$prod_prew = $download_page -> find('img[class=image]');
//var_dump($prod_prew);
}