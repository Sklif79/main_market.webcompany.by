name:city_select_load_contacts
description:Аяксовая подгрузка списка городов на странице контакты
======
<?php

$region_id=$modx->db->escape($_GET['region_id']);//получаем id страницы выбранной области; экранируем потенциально-опасные символы

//значения по умолчанию
if(isset($region_id) && !empty($region_id)){

	$result = $modx->runSnippet('contact_city_select', array( 'iddoc' => $region_id));//делаем обращение к сниппету c нужными параметрами

	return $result;// выводим результат
}