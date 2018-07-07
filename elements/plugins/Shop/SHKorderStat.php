name:SHKorderStat
description:<strong>1.0</strong> Statistics orders
======
<?php
defined('IN_MANAGER_MODE') or die();

$mod_name = 'Статистика заказов';
$mod_page = "index.php?a=112&id=".$_GET['id'];

$e = &$modx->Event;
$output = "";

if ($e->name == 'OnSHKmodRenderTopLinks') {
  
  $output .= '<li><a href="'.$mod_page.'&amp;action=plugin&amp;pname=orderstat"><img src="../assets/plugins/shk_orderstat/img/chart-pie-separate.png"> '.$mod_name.'</a></li>';

}

if ($e->name == 'OnSHKmodPagePrint') {
  
  if(isset($_GET['pname']) && $_GET['pname']=='orderstat'){
    
    ob_start();
    
    require MODX_BASE_PATH.'assets/plugins/shk_orderstat/shk_orderstat.inc.php';
    
    $output = ob_get_contents();
    
    ob_end_clean();
  
  }

}

$e->output($output);

//?>