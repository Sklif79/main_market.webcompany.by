name:site_config_change_update
description:Изменяем конфигурацию сайта по информации из формы в бакэнде
======
<?php
/*Подключаем библиотеку с нужными классами*/
include_once('assets/libs/Rising13_lib/tv_array.php');
$tv_array = new tv_array();

/*Подключаем библиотеку MODxAPI, создаем объект*/
include_once(MODX_BASE_PATH . "assets/lib/MODxAPI/modResource.php");
$doc = new modResource($modx);

/*Задаем параметры*/
/*id страницы с конфигурационными параметрами*/
$config_page_id = 99;
$test_mode_tv_name = 'site_test_mode';

if (isset($_POST['change_site_config']) && $_POST['change_site_config'] === '1') {
    $sesUserType = $_SESSION['usertype'];//тип авторизованного пользователя
    $idp = $config_page_id;    //id страницы конфигурации

    /*Получаем параметр Тестовый режим*/
	$site_test_mode_value_array = $doc->edit($config_page_id)->get($test_mode_tv_name);
    $site_test_mode_value = (bool)$site_test_mode_value_array[0];

    if ((isset($sesUserType) && $sesUserType === 'manager') || (isset($site_test_mode_value) && $site_test_mode_value === true)) {
        $post_busket_change_val = $modx->db->escape($_POST['no_busket_btn']);
		
        if ($site_test_mode_value === true) {
            session_start();
            $_SESSION['site_config']['no_busket_btn'] = $post_busket_change_val;
        } else {
            /*Отключение корзины*/
            $post_no_busket_btn_value = (bool)$post_busket_change_val;
            if (isset($post_no_busket_btn_value)) {
                $doc->edit($config_page_id)->set('no_busket_btn', $post_no_busket_btn_value)->save(true, true);
                $disabed_int_val = (int)$post_no_busket_btn_value;
                $id_basket_snippet = '37';
                $table_name_snippet = $modx->getFullTableName('site_snippets');
                $fields = array('disabled' => $disabed_int_val);
                $result = $modx->db->update($fields, $table_name_snippet, 'id=' . $id_basket_snippet);
            }
            /*Конец отключения корзины*/
        }
    }
    $modx->clearCache('full');
}