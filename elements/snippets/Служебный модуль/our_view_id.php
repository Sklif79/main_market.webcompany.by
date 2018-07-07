name:our_view_id
description:получение id просмотренных страниц
======
<?php

/*
* Данный сниппет предназначен для вывода id уже просмотренных страниц, при отсутствии просмотренных страниц он выведет текущую и добавит её в файл cookie, также в cookie будет добавлено значение текущей страницы, если она еще не просматривалась
* @author Rising13
*/
	
$cookie_name='our_view';	//имя строки в COOKIE
$sepsel= ',';//сепаратор
$cookval= $_COOKIE[$cookie_name];//значение параметра COOKIE

$doc_parents = 53; //Родительский каталог
$ourview_tpl = 'ourview_tpl'; //Шаблон для вывода превью просмотренных товаров
$snip_name = 'DocLister'; //Сниппет для вывода превью товаров
$total_val = 14;//Количество результатов
$arrparams=array('id' => 'ourview', 'idType'=>'documents' ,'parents' => $doc_parents, 'depth' => '4', 'tpl' => $ourview_tpl, 'sortType' => 'doclist', 'total' => $total_val, 'tvPrefix' => '', 'tvList' => 'product_prev', 'addWhereList' =>'c.template IN (38,64)');
$all_result_tpl = 'ourview_outer_tpl';//Шаблон контейнера вывода
$allowed_templates_id = [38,64];//id разрешенных шаблонов


$idp=$modx -> documentIdentifier;//id текущей страницы
$template_idp_arr = $modx->getDocument($idp,'template');
$template_idp = $template_idp_arr['template'];//id шаблона страницы

if (isset($cookval)){
	$selsub = explode($sepsel, $cookval);
	foreach($selsub as $arsel){
		if($arsel!='null' and $arsel!=''){//получаем массив
			$arRes[]=htmlspecialchars(urldecode($arsel));
		}
	}
	$count=count($arRes);
	if($count == 1){

		if (in_array($idp, $arRes)) {//проверяем на наличие значения в массиве
			$our_view_id=$idp;
		}else{
			if (in_array($template_idp, $allowed_templates_id)) {
				$our_view_id=$arRes[0];
				$cookval=$cookval.$sepsel.$idp;
				SetCookie($cookie_name,$cookval,time()+604800,'/');
			}
		}
	}elseif ($count > 1 and $count < $total_val){
		if (in_array($idp, $arRes)) {//проверяем на наличие значения в массиве
			$our_view_id = implode(",", $arRes);
		}else{
			if (in_array($template_idp, $allowed_templates_id)) {
				$our_view_id = implode(",", $arRes);
				$cookval=$cookval.$sepsel.$idp;
				SetCookie($cookie_name,$cookval,time()+604800,'/');
			}
			$our_view_id = implode(",", $arRes);
		}
		
	}else{
		if($count != 0){
			$arRes7=array_slice($arRes, -$total_val, $total_val);

			$ourview_count = count($arRes7);

			if (in_array($idp, $arRes7)) {//проверяем на наличие значения в массиве
				$our_view_id = implode(",", $arRes7);
				$cookval=$our_view_id.$sepsel.$idp;
			}else{
				if (in_array($template_idp, $allowed_templates_id)) {
					$our_view_id = implode(",", $arRes7);
					$cookval=$our_view_id.$sepsel.$idp;
					SetCookie($cookie_name,$cookval,time()+604800,'/');
				}
			}
		}
	}	
}else{
	if (in_array($template_idp, $allowed_templates_id)) {
		$count = 1;
		$our_view_id=$idp;
		SetCookie($cookie_name,$idp,time()+604800,'/');
	}
}
if(($count>0) && (isset($our_view_id)) && ($our_view_id!='')){
	$arrparams['documents'] = $our_view_id;
	$our_view_docs_val = $modx->runSnippet($snip_name, $arrparams);
	$empty_count = $total_val - $count;
	if(isset($empty_count) && $empty_count!==0){
		$empty_pl = '';
		for ($i = 1; $i <= $empty_count; $i++) {
			$empty_pl.='<div class="watched-el"></div>';
		}
	}
	$parseChunk_arrparams = array('result'=>$our_view_docs_val,'empty'=>$empty_pl);
	$result_view = $modx->parseChunk($all_result_tpl, $parseChunk_arrparams, '[+', '+]' );
	return $result_view;
}