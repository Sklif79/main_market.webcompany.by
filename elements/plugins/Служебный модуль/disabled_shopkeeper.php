name:disabled_shopkeeper
description:Отключает сниппет шопкипер
======
<?php
$page_id = $modx->db->escape($_POST['id']); //id редактируемой страницы

if($page_id === '99'){

	if(isset($_POST['tv83'])){
		$no_busket_btn_val =(bool) $_POST['tv83'][0];//получаем значение опции отображать корзину
	}else{
		$no_busket_btn_val = false;
	}

	$table_name_snippet=$modx->getFullTableName('site_snippets');
	$snippet_disabled_val = $modx->db->select('disabled', $table_name_snippet, 'id = 37');
	if($modx->db->getRecordCount($snippet_disabled_val)) {
		$snippet_disabled_val_res =(bool) $modx->db->getValue($snippet_disabled_val); 
		if($snippet_disabled_val_res === $no_busket_btn_val){
			$update = false;
		}else{
			$update = true;
		}
	}else{
		$update = true;
	}
	if($update){
		$disabed_int_val = (int) $no_busket_btn_val;
		$fields = array('disabled'=> $disabed_int_val);
		$result = $modx->db->update( $fields,$table_name_snippet,'id=37');
		$modx->clearCache('full');
	}
}
return;