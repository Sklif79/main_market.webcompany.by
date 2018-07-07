name:left_menu
description:вывод левого меню
======
<?php

/**
* @desc Выводит левое меню начиная с верхнего уровня (0) или с указанного в TV-параметре родителя из списка
*
* @author Rising13
* @version 1.0.0 (20.06.2016)
*
* @param iddoc {integer} - id документа. По умолчанию - текущий документ
* @param height {integer} - глубина поиска родителей
* @param exclude_parent_id_tv - имя TV-параметра с перечнем id для которых использовать родителями нужно их

* @copyright 2016, Webcompany
* http://webcompany.by
*/
	$iddoc=(isset($iddoc)) ? $iddoc: $modx -> documentObject['iddoc'];	//id документа, если не задано, то будет родитель текущего документа
$height=(isset($height)) ? $height: $modx -> documentObject['height'];	//глубина поиска родителей, если не задано, то будет 10
$exclude_parent_id_tv=(isset($exclude_parent_id_tv)) ? $exclude_parent_id_tv: $modx -> documentObject['exclude_parent_id_tv'];	//имя TV-параметра с исключаемыми родителями
$exclude_parent_id_docid=(isset($exclude_parent_id_docid)) ? $exclude_parent_id_docid: $modx -> documentObject['exclude_parent_id_docid'];	//id страницы с документами, для которых родитель меню не равен 0.

$out_isfolder=(isset($out_isfolder)) ? $out_isfolder: $modx -> documentObject['out_isfolder'];	//выводить только папки


if ($height==''){
	$height=10;
}

if ($iddoc==''){
	$iddoc=$modx -> documentIdentifier;
}

if(empty($exclude_parent_id_tv)){
	$exclude_parent_id_tv = 'left_block_exclude_parent';
}

if(empty($exclude_parent_id_docid)){
	$exclude_parent_id_docid = 99;
}

if($out_isfolder==TRUE){
	$isfolder = 'AND (c.isfolder = \'1\')';
}else{
	$isfolder = '';
}

$exclude_par_id_array = $modx->getTemplateVar($exclude_parent_id_tv,'id',$exclude_parent_id_docid);
if(!empty($exclude_par_id_array)){
	$exclude_par_id_str = $exclude_par_id_array['value'];
	$exclude_parent_id_val_arr = explode(',',$exclude_par_id_str);
	if(count($exclude_parent_id_val_arr)>0){
		$all_parents_arr = $modx -> getParentIds($iddoc,$height);
		if(count($all_parents_arr)>0){
			$parents_interset_result = array_intersect($all_parents_arr, $exclude_parent_id_val_arr);
			if(count($parents_interset_result)>0){
				$parent_id = current($parents_interset_result);
			}else{
				$parent_id = 0;
			}
		}else{
			if(in_array($iddoc, $exclude_parent_id_val_arr)===FALSE){
				$parent_id = 0;
			}else{
				$parent_id = $iddoc;
			}
		}
	}else{
		$parent_id = 0;
	}
}else{
	$parent_id = 0;
}

$snippet_name = 'DLMenu';
$arrparams = array('parents' => $parent_id,'maxDepth' =>'6','parentRowTpl' => 'left_bar_menu_new_parentRowTpl','innerClass'=>'dropdown','hereClass' => 'active','addWhereList' =>'c.id <> 1 AND c.hidemenu = 0 '.$isfolder.' AND NOT (c.template IN (13,19,22,24,38,59))');

$snippet_result_val = $modx->runSnippet($snippet_name,$arrparams);//делаем обращение к сниппету c нужными параметрами

return $snippet_result_val;// выводим результат