name:dealers_city_dd_filter
description:Выводит строку для фильтрации дилеров по городу
======
<?php

$filter_val = $_DocLister->getCFGDef('dd_filter');
if(isset($filter_val) && !empty($filter_val)){
	$dd_column = '5';//Строка для фильтрации
	$filter_str = "&filter=`{$dd_column}::$filter_val`";
	$data['filter'] = $filter_str;
}
return $data;