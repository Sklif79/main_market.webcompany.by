name:site_config_change_update
description:Изменяем конфигурацию сайта по информации из формы в бакэнде
======
<?php
<?php
if(isset($_POST['change_site_config']) && $_POST['change_site_config']==='1'){
		$sesUserType = $_SESSION['usertype'];//тип авторизованного пользователя
		$idp=99;	//id страницы конфигурации
		$tvs_param_name_array = array('site_test_mode','no_busket_btn','site_header_config'); //названия TV-параметров с конфигурацией
		$tvs_value_array = $modx->getTemplateVars($tvs_param_name_array, '*', $idp);

		if(isset($tvs_value_array) && $tvs_value_array[1]['name']==='site_test_mode'){
			$site_test_mode_value =(bool) $tvs_value_array[1]['value'];
		}

		if((isset($sesUserType) && $sesUserType==='manager') || (isset($site_test_mode_value) && $site_test_mode_value===true)){
			$busket_change_val = $modx->db->escape($_POST['no_busket_btn']);
			$header_change_val = $modx->db->escape($_POST['site_header_config']);

			if($site_test_mode_value===true){
				echo 'Test_mode';

			}else{
				if(isset($tvs_value_array) && $tvs_value_array[0]['name']==='no_busket_btn'){
					$no_busket_btn_value = (bool) $tvs_value_array[0]['value'];
					$post_no_busket_btn_value = (bool) $busket_change_val;
					if($no_busket_btn_value !== $post_no_busket_btn_value){
						$tv_val_full_table_name = $modx->getFullTableName('site_tmplvar_contentvalues');
						if($post_no_busket_btn_value){
							$modx->db->query("INSERT INTO {$tv_val_full_table_name} (`id`, `tmplvarid`, `contentid`, `value`) VALUES (NULL, '83', '99', '1')");
							$disabed_int_val = 1;
						}else{
							$modx->db->query("DELETE FROM {$tv_val_full_table_name} WHERE `tmplvarid` = '83' AND `contentid` = '99'");
							$disabed_int_val = 0;
						}
						$table_name_snippet=$modx->getFullTableName('site_snippets');
						$fields = array('disabled'=> $disabed_int_val);
						$result = $modx->db->update( $fields,$table_name_snippet,'id=37');
						$modx->clearCache('full');
					}

				}

			}

		}
	}
