name:ajax_load_product
description:Аяксовая подгрузка товаров и изменение вида отображения товара
======
<?php

$dit="";	

$start=$modx->db->escape($_GET['start']);//получаем номер товара, с которого будем выводить; экранируем потенциально-опасные символы
$parent=$modx->db->escape($_GET['parent']);//получаем id родительского элемента, в котором размещены товары; экранируем потенциально-опасные символы
$type=$modx->db->escape($_GET['type']);//получаем тип каталога, в котором размещены товары; экранируем потенциально-опасные символы
$sortby=$modx->db->escape($_GET['sort']);//получаем по чем сортировать каталог, в котором размещены товары; экранируем потенциально-опасные символы
$sortdir=$modx->db->escape($_GET['sortdir']);//получаем направление сортировки каталога, в котором размещены товары; экранируем потенциально-опасные символы
$total=$modx->db->escape($_GET['total']);//получаем количество выводимых товаров; экранируем потенциально-опасные символы
$load_prod=$modx->db->escape($_GET['load_prod']);//подгружаем товары или же выводим блок заново; экранируем потенциально-опасные символы
$filter=$modx->db->escape($_GET['filter']);//Параметр для фильтрации; экранируем потенциально-опасные символы

if (!isset($start)) $start=0;
if (!isset($parent)) $parent=53;
if (!isset($type)) $type="table";
if (!isset($sortby)) $sortby="menuindex";
if (!isset($sortdir)) $sortdir="ASC";
if (!isset($total)) $total="all";
if (!isset($load_prod)) $load_prod=1;
if (!isset($filter)) $filter='';

if ($type=="table" || $type=="block"){
	$tpl="product_plitka_tpl";
}elseif($type=="list"){
	$tpl="production_list_tpl";
}else{
	$tpl="production_spisok_tpl";
}

if(isset($filter) && !empty($filter)){
	$filters_str = 'AND(tvd:'.$filter.':=:1)';
}
$snippet_name = 'DocLister';
$snippet_params = array( 'id' => 'product_ajax',
						'tpl' => $tpl,
						'parents' => $parent,
						'orderBy' => $sortby." ".$sortdir,
						'display' => $total,
						'depth'	  => 4,
						'addWhereList' => 'c.template IN (38,64) AND c.isfolder = 0 AND c.hidemenu = 0',
						'filters' => $filters_str,	  
						'offset'=> $start,
						'tvPrefix'=>'',
						'tvList'=>'product_prev,novelty,sale,sale_persent,bestseller,articul,new_price,old_price,img_prew_prod',
						'prepare'=>'class_order_add',
						'tvSortType'=>'DECIMAL'
					   );

/*Количество документов*/
$snippet_params_count = $snippet_params;
$snippet_params_count['id'] = 'product_ajax_count';
$snippet_params_count['api'] = 1;
$snippet_params_count['JSONformat'] = 'new';

$ditcount_json = $modx->runSnippet($snippet_name,$snippet_params_count);//делаем обращение к сниппету DocLister c нужными параметрами для получения количества товаров
$ditcount_arr = json_decode($ditcount_json);
$ditcount = $ditcount_arr->total;

$L_count=intval($ditcount);//получаем количество дочерних элементов
if($load_prod==0){
	$start=0;
	$snippet_params['start'] = 0;
	if($type=="table" || $type=="block"){

?>
<div class="catalog-plitka uk-grid uk-grid-width-1-1 uk-grid-width-medium-1-2 uk-grid-width-large-1-3">
	<?
		$dit = $modx->runSnippet($snippet_name, $snippet_params);  
		echo $dit;// выводим результат
	?>
</div>
<?
		if((intval($total) <= $L_count) && ($total != "all")){
?>
<div class="more-prod">
	<a href="#" class="primary-button">Показать еще</a>
</div>
<?
		}
	}elseif($type=="list"){
?>
<div class="catalog-list">
	<?
		$dit = $modx->runSnippet($snippet_name,$snippet_params);//делаем обращение к сниппету ditto c нужными параметрами

		echo $dit;// выводим результат
	?>
</div>
<?
		if((intval($total) <= $L_count) && ($total != "all")){
?>
<div class="more-prod">
	<a href="#" class="primary-button">Показать еще</a>
</div>
<?
		}
	}else{
?>
<div class="catalog-spisok">
	<?
		$dit = $modx->runSnippet($snippet_name,$snippet_params);//делаем обращение к сниппету ditto c нужными параметрами

		echo $dit;// выводим результат
	?>
</div>
<?
		if((intval($total) <= $L_count) && ($total != "all")){
?>
<div class="more-prod">
	<a href="#" class="primary-button">Показать еще</a>
</div>
<?
		}
	}

}else{

	$dit = $modx->runSnippet($snippet_name,$snippet_params);//делаем обращение к сниппету ditto c нужными параметрами

	echo $dit;// выводим результат
}
if(($start+$total)>=$L_count){
	echo "<input type='hidden' id='ajax_stop' value='end'>"; // если количество товаров не позволяет выводить больше товаров, то ставим даннный элемент для остановки
}