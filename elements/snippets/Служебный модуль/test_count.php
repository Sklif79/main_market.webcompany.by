name:test_count
description:Количество просмотров страницы
======
<?php

$table_tv=$modx->getFullTableName('site_tmplvar_contentvalues');
if(!isset($_SESSION['usertype'])) { $_SESSION['usertype'] = ''; } 
if($modx->documentObject['donthit'] != 1 && $_SESSION['usertype'] != 'manager') {       
	$id = $modx->documentIdentifier;
	$countvalarr = $modx->getTemplateVar(58,'*',$id);
	$countval = $countvalarr['value'];
	if(!empty($countval)){
		$countval = $countval+1;
		$fields = array('value'=>$countval);
		$result = $modx->db->update( $fields, $table_tv, 'tmplvarid =58 AND contentid = '.$id.'');
	}else{
		$countval=1;
		$fields = array('tmplvarid' => 58,
						'contentid' => $id,
						'value'=> $countval			
					   );
		$result2 = $modx->db->insert( $fields, $table_tv);
	}
}
