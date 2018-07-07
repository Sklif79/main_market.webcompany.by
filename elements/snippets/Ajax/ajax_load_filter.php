name:ajax_load_filter
description:Вариант 2. Аяксовая подгрузка товаров и изменение вида отображения товара.
======
<?php
/*Получение значений GET - параметров и экранирование их вывода*/
if (!function_exists(get_esc)) {
    function get_esc($get_name)
    {
        global $modx;
        if (isset($get_name) && $get_name != '') {
            $get_val = (string) $_GET[$get_name];
            if (isset($get_val) && $get_val !== '') {
                return $modx->db->escape($get_val);
            }
        }
    }
}

$dit = '';
/*Получаем зачения параметров из запроса*/
$get_name_array = array('start', 'parent', 'type', 'sortby', 'sortdir', 'total', 'load_prod', 'filter', 'documents');
foreach ($get_name_array as $get_name_val) {
    $$get_name_val = get_esc($get_name_val);
}

//Присваиваем значения по умолчанию
if (!isset($start)) $start = 0;
if (!isset($parent)) $parent = 53;
if (!isset($type)) $type = 'table';
if (!isset($sortby)) $sortby = 'menuindex';
if (!isset($sortdir)) $sortdir = 'ASC';
if (!isset($total)) $total = 'all';
if (!isset($load_prod)) $load_prod = 1;
if (!isset($filter)) $filter = '';
if (!isset($documents)) $documents = '';
if (!isset($idType)) $idType = 'parents';
if (!isset($ownerClass)) $ownerClass = '';

$ownerTpl = 'product_filter_owner_ajax_tpl';

if ($type == 'table' || $type == 'block') {
    $tpl = 'product_plitka_tpl';
    $ownerClass = 'catalog-plitka uk-grid uk-grid-width-1-1 uk-grid-width-medium-1-2 uk-grid-width-large-1-3';

} elseif ($type == 'list') {
    $tpl = 'production_list_tpl';
    $ownerClass = 'catalog-list';
} else {
    $tpl = 'production_spisok_tpl';
    $ownerClass = 'catalog-spisok';
}



if (isset($filter) && !empty($filter)) {
    $filters_str = 'AND(tvd:' . $filter . ':=:1)';
}

if(!empty($documents)){
	$idType = 'documents';
}

$snippet_name = 'DocLister';
$snippet_params = array(
    'id' => 'product',
	'idType' => $idType,
	'documents' => $documents,
    'tpl' => $tpl,
    'parents' => $parent,
    'orderBy' => $sortby . ' ' . $sortdir,
    'display' => $total,
    'depth' => 4,
    'addWhereList' => 'c.template IN (38,64) AND c.isfolder = 0 AND c.hidemenu = 0',
    'filters' => $filters_str,
    'offset' => $start,
    'tvPrefix' => '',
    'tvList' => 'product_prev,novelty,sale,sale_persent,bestseller,articul,new_price,old_price,img_prew_prod',
    'prepare' => 'class_order_add',
    'prepareWrap' => 'class_product_wrap,eFilter_ids_wrap',
    'tvSortType' => 'DECIMAL',
    'paginate' => 'pages',
    'TplCurrentPage' => 'pages_TplCurrentPage',
    'TplDotsPage' => 'pages_TplDotsPage',
    'TplPage' => 'pages_TplPage',
    'TplWrapPaginate' => '@CODE:<div class="pagination ajax-pages"><ul class="uk-pagination">[+wrap+]</ul></div>',
    'TplPrevP' => 'pages_TplPrevP',
    'TplNextP' => 'pages_TplNextP',
    'pageAdjacents' => '1',
	'ownerTPL' => $ownerTpl,
    'eFilter_ids' => $documents
);

/*Количество документов*/
$snippet_params_count = $snippet_params;
$snippet_params_count['id'] = 'product_ajax_count';
$snippet_params_count['api'] = 1;
$snippet_params_count['JSONformat'] = 'new';

$ditcount_json = $modx->runSnippet($snippet_name, $snippet_params_count);//делаем обращение к сниппету DocLister c нужными параметрами для получения количества товаров
$ditcount_arr = json_decode($ditcount_json);
$ditcount = $ditcount_arr->total;

$L_count = intval($ditcount);//получаем количество дочерних элементов
if ($load_prod == 0) {
    $start = 0;
    $snippet_params['start'] = 0;
    $snippet_params['ownerClass'] = $ownerClass;

    $dit = $modx->runSnippet($snippet_name, $snippet_params);//делаем обращение к сниппету ditto c нужными параметрами
    echo $dit;// выводим результат
} else {
	$snippet_params['ownerTPL'] = '@CODE:[+dl.wrap+][+product.pages+]';

    $dit = $modx->runSnippet($snippet_name, $snippet_params);//делаем обращение к сниппету ditto c нужными параметрами

    echo $dit;// выводим результат
}
if (($start + $total) >= $L_count) {
    echo "<input type='hidden' id='ajax_stop' value='end'>"; // если количество товаров не позволяет выводить больше товаров, то ставим даннный элемент для остановки
}

/*Задаем куки для того, чтоб задать определенный вывод в фильтре*/
setcookie('filter_template', $tpl, 0,'/');
setcookie('filter_display', $total, 0,'/');
setcookie('filter_sortby', $sortby, 0,'/');
setcookie('filter_sortdir', $sortdir, 0,'/');