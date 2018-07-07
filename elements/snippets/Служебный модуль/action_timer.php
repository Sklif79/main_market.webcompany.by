name:action_timer
description:Вывод блока таймера
======
<?php

/*
Выводит код таймера, если время окончания акции больше текущего времени
* @author Rising13 *
* ver. 1.0.0 *
*/
	$doc_id=(isset($doc_id)) ? $doc_id: $modx -> documentObject['doc_id'];//id документа
$tpl = (isset($tpl)) ? $tpl: $modx -> documentObject['tpl'];//чанк шаблона вывода, если не указан, то выведет напрямую
$tv_name = array('action_active_to');


if (!isset($doc_id) || empty($doc_id)) {
	$doc_id=$modx -> documentIdentifier;
}

if (!isset($tpl) || empty($tpl)) {
	$tpl='action_timer_tpl';
}

$action_time_unix_arr = $modx->getTemplateVarOutput($tv_name,$doc_id);

if(isset($action_time_unix_arr) && !empty($action_time_unix_arr)){
	$this_time = time();
	$action_time_unix = $action_time_unix_arr['action_active_to'];
	if($action_time_unix > $this_time){
		$action_time_format = date("M d Y H:i:s", $action_time_unix);
		if(!empty($action_time_format)){
			if(isset($tpl) && !empty($tpl)){
				return $modx->parseChunk($tpl, array( 'time_to' => $action_time_format), '[+', '+]' );
			}else{
				return $action_time_format;
			}
		}
	}

}