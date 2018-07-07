name:form_config_gen
description:Генерация формы конфигурации сайта
======
<?php
<?php
/*Подключаем библиотеку с классами, создаем новый объект*/
include_once('assets/libs/Rising13_lib/tv_array.php');
$tv_array = new tv_array();

$sesUserType = $_SESSION['usertype'];//тип авторизованного пользователя
$idp = 99;    //id страницы конфигурации
$tvs_param_name_array = array('site_test_mode', 'no_busket_btn', 'site_header_config', 'site_footer_config', 'site_breadcrumbs_config', 'basket_type', 'search_catalog_only', 'search_catalog_id', 'filter_type'); //названия TV-параметров с конфигурацией
$form_config_gen_chunk_name = 'form_config_gen_tpl'; //Название чанка с шаблоном вывода формы конфигурации

/*Получаем массив с нужными TV-параметрами конфигурации*/
$tvs_value_array = $modx->getTemplateVars($tvs_param_name_array, '*', $idp);

/*Получаем параметр Тестовый режим*/
$site_test_mode_value = $tv_array->tv_value_from_name_bool($tvs_value_array, 'site_test_mode');

$no_busket_btn_value = $tv_array->tv_value_from_name_bool($tvs_value_array, 'no_busket_btn');


$site_header_config_value_array = $tv_array->tv_array_from_name($tvs_value_array, 'site_header_config');

$site_footer_config_value_array = $tv_array->tv_array_from_name($tvs_value_array, 'site_footer_config');

$site_breadcrumbs_config_value_array = $tv_array->tv_array_from_name($tvs_value_array, 'site_breadcrumbs_config');

$site_basket_config_value_array = $tv_array->tv_array_from_name($tvs_value_array, 'basket_type');

/*Поиск*/
$search_catalog_only_value = $tv_array->tv_value_from_name_bool($tvs_value_array, 'search_catalog_only');
$search_catalog_id_value = $tv_array->tv_value_from_name($tvs_value_array, 'search_catalog_id');
/*/Поиск*/

/*Фильтр*/
$site_filter_config_value_array = $tv_array->tv_array_from_name($tvs_value_array, 'filter_type');
/*End Фильтр*/

if ((isset($sesUserType) && $sesUserType === 'manager') || (isset($site_test_mode_value) && $site_test_mode_value === true)) {
    $header_conf_option_str = '';
    $site_test_mode_checked = '';


    /*отображать корзину*/
    if ($no_busket_btn_value) {
        $site_test_mode_checked = 'checked';
        $site_test_mode_active = 'active';

    } else {
        $site_test_mode_checked = '';
        $site_test_mode_active = '';
    }

    if ($site_test_mode_value === true) {
        if (isset($_SESSION['site_config']['no_busket_btn'])) {
            if ($_SESSION['site_config']['no_busket_btn'] == true) {
                $site_test_mode_checked = 'checked';
                $site_test_mode_active = 'active';
                $hide_busket_script_str = <<<EOT
					<script>
						$(document).ready(function () {
						$('#shopCart,.header-basket').hide();
					});
					</script>
EOT;
                echo $hide_busket_script_str;
            } else {
                $site_test_mode_checked = '';
                $site_test_mode_active = '';
            }
        }
    }

    /*Вывод конфигурации header*/
    if (!empty($site_header_config_value_array)) {
        $site_header_config_value = $site_header_config_value_array['value'];
        $site_header_config_elements = $site_header_config_value_array['elements'];

        if (!empty($site_header_config_elements)) {
            $site_header_config_elements_row_array = explode('||', $site_header_config_elements);
            if (count($site_header_config_elements_row_array) > 0) {
                $header_conf_arr_keys = [];
                $header_conf_arr_vals = [];
                foreach ($site_header_config_elements_row_array as $header_conf_row) {
                    $header_conf_col_arr = explode('==', $header_conf_row);
                    if (count($header_conf_col_arr) > 0) {
                        $header_conf_arr_keys[] = $header_conf_col_arr[1];
                        $header_conf_arr_vals[] = $header_conf_col_arr[0];
                    }
                }

            }
        }

        if ($site_test_mode_value === true) {
            if (isset($_SESSION['site_config']['site_header_config'])) {
                if (in_array($_SESSION['site_config']['site_header_config'], $header_conf_arr_keys)) {
                    $site_header_config_value = $_SESSION['site_config']['site_header_config'];
                }
            }
        }

        $header_conf_option_str = '';
        if (!empty($header_conf_arr_keys) && !empty($header_conf_arr_vals)) {
            $header_conf_vars_arr = array_combine($header_conf_arr_keys, $header_conf_arr_vals);
            foreach ($header_conf_vars_arr as $header_conf_vars_key => $header_conf_vars_value) {
                $selected_attr = '';
                if ($header_conf_vars_key === $site_header_config_value) {
                    $selected_attr = 'selected';
                } else {
                    $selected_attr = '';
                }
                $header_conf_option_str .= "<option value='{$header_conf_vars_key}' {$selected_attr}>{$header_conf_vars_value}</option>" . PHP_EOL;
            }
        }
    }


    /*Вывод конфигурации footer*/
    if (!empty($site_footer_config_value_array)) {
        $site_footer_config_value = $site_footer_config_value_array['value'];
        $site_footer_config_elements = $site_footer_config_value_array['elements'];

        if (!empty($site_footer_config_elements)) {
            $site_footer_config_elements_row_array = explode('||', $site_footer_config_elements);
            if (count($site_footer_config_elements_row_array) > 0) {
                $footer_conf_arr_keys = [];
                $footer_conf_arr_vals = [];
                foreach ($site_footer_config_elements_row_array as $footer_conf_row) {
                    $footer_conf_col_arr = explode('==', $footer_conf_row);
                    if (count($footer_conf_col_arr) > 0) {
                        $footer_conf_arr_keys[] = $footer_conf_col_arr[1];
                        $footer_conf_arr_vals[] = $footer_conf_col_arr[0];
                    }
                }

            }
        }

        if ($site_test_mode_value === true) {
            if (isset($_SESSION['site_config']['site_footer_config'])) {
                if (in_array($_SESSION['site_config']['site_footer_config'], $footer_conf_arr_keys)) {
                    $site_footer_config_value = $_SESSION['site_config']['site_footer_config'];
                }
            }
        }

        $footer_conf_option_str = '';
        if (!empty($footer_conf_arr_keys) && !empty($footer_conf_arr_vals)) {
            $footer_conf_vars_arr = array_combine($footer_conf_arr_keys, $footer_conf_arr_vals);
            foreach ($footer_conf_vars_arr as $footer_conf_vars_key => $footer_conf_vars_value) {
                $selected_attr = '';
                if ($footer_conf_vars_key === $site_footer_config_value) {
                    $selected_attr = 'selected';
                } else {
                    $selected_attr = '';
                }
                $footer_conf_option_str .= "<option value='{$footer_conf_vars_key}' {$selected_attr}>{$footer_conf_vars_value}</option>" . PHP_EOL;
            }
        }
    }

    /*Вывод конфигурации breadcrumbs*/
    if (!empty($site_breadcrumbs_config_value_array)) {
        $site_breadcrumbs_config_value = $site_breadcrumbs_config_value_array['value'];
        $site_breadcrumbs_config_elements = $site_breadcrumbs_config_value_array['elements'];

        if (!empty($site_breadcrumbs_config_elements)) {
            $site_breadcrumbs_config_elements_row_array = explode('||', $site_breadcrumbs_config_elements);
            if (count($site_breadcrumbs_config_elements_row_array) > 0) {
                $breadcrumbs_conf_arr_keys = [];
                $breadcrumbs_conf_arr_vals = [];
                foreach ($site_breadcrumbs_config_elements_row_array as $breadcrumbs_conf_row) {
                    $breadcrumbs_conf_col_arr = explode('==', $breadcrumbs_conf_row);
                    if (count($breadcrumbs_conf_col_arr) > 0) {
                        $breadcrumbs_conf_arr_keys[] = $breadcrumbs_conf_col_arr[1];
                        $breadcrumbs_conf_arr_vals[] = $breadcrumbs_conf_col_arr[0];
                    }
                }

            }
        }

        if ($site_test_mode_value === true) {
            if (isset($_SESSION['site_config']['site_breadcrumbs_config'])) {
                if (in_array($_SESSION['site_config']['site_breadcrumbs_config'], $breadcrumbs_conf_arr_keys)) {
                    $site_breadcrumbs_config_value = $_SESSION['site_config']['site_breadcrumbs_config'];
                }
            }
        }

        $breadcrumbs_conf_option_str = '';
        if (!empty($breadcrumbs_conf_arr_keys) && !empty($breadcrumbs_conf_arr_vals)) {
            $breadcrumbs_conf_vars_arr = array_combine($breadcrumbs_conf_arr_keys, $breadcrumbs_conf_arr_vals);
            foreach ($breadcrumbs_conf_vars_arr as $breadcrumbs_conf_vars_key => $breadcrumbs_conf_vars_value) {
                $selected_attr = '';
                if ($breadcrumbs_conf_vars_key === $site_breadcrumbs_config_value) {
                    $selected_attr = 'selected';
                } else {
                    $selected_attr = '';
                }
                $breadcrumbs_conf_option_str .= "<option value='{$breadcrumbs_conf_vars_key}' {$selected_attr}>{$breadcrumbs_conf_vars_value}</option>" . PHP_EOL;
            }
        }
    }

    /*Вывод конфигурации busket*/
    if (!empty($site_basket_config_value_array)) {
        $site_basket_config_value = $site_basket_config_value_array['value'];
        $site_basket_config_elements = $site_basket_config_value_array['elements'];

        if (!empty($site_basket_config_elements)) {
            $site_basket_config_elements_row_array = explode('||', $site_basket_config_elements);
            if (count($site_basket_config_elements_row_array) > 0) {
                $basket_conf_arr_keys = [];
                $basket_conf_arr_vals = [];
                foreach ($site_basket_config_elements_row_array as $basket_conf_row) {
                    $basket_conf_col_arr = explode('==', $basket_conf_row);
                    if (count($basket_conf_col_arr) > 0) {
                        $basket_conf_arr_keys[] = $basket_conf_col_arr[1];
                        $basket_conf_arr_vals[] = $basket_conf_col_arr[0];
                    }
                }

            }
        }

        if ($site_test_mode_value === true) {
            if (isset($_SESSION['site_config']['basket_type'])) {
                if (in_array($_SESSION['site_config']['basket_type'], $basket_conf_arr_keys)) {
                    $site_basket_config_value = $_SESSION['site_config']['basket_type'];
                }
            }
        }

        $basket_conf_option_str = '';
        if (!empty($basket_conf_arr_keys) && !empty($basket_conf_arr_vals)) {
            $basket_conf_vars_arr = array_combine($basket_conf_arr_keys, $basket_conf_arr_vals);
            foreach ($basket_conf_vars_arr as $basket_conf_vars_key => $basket_conf_vars_value) {
                $selected_attr = '';
                if ($basket_conf_vars_key === $site_basket_config_value) {
                    $selected_attr = 'selected';
                } else {
                    $selected_attr = '';
                }
                $basket_conf_option_str .= "<option value='{$basket_conf_vars_key}' {$selected_attr}>{$basket_conf_vars_value}</option>" . PHP_EOL;
            }
        }
    }

    /*Поиск конфигурация*/
    /*Поиск только по каталогу*/
    if ($site_test_mode_value === true) {
        if (isset($_SESSION['site_config']['search_catalog_only'])) {
            if ($_SESSION['site_config']['search_catalog_only'] == true) {
                $search_catalog_only_checked = 'checked';
                $search_catalog_only_active = 'active';
            } else {
                $search_catalog_only_checked = '';
                $search_catalog_only_active = '';
            }
        }
    } else {
        if ($search_catalog_only_value) {
            $search_catalog_only_checked = 'checked';
            $search_catalog_only_active = 'active';

        } else {
            $search_catalog_only_checked = '';
            $search_catalog_only_active = '';
        }
    }

    /*Id каталога*/
    if ($site_test_mode_value === true) {
        if (!empty($_SESSION['site_config']['search_catalog_id'])) {
            $search_catalog_id_value = $modx->db->escape($_SESSION['site_config']['search_catalog_id']);
        }
    }


    /*Конец поиска*/

    /*Фильтр*/
    if (!empty($site_filter_config_value_array)) {
        $site_filter_config_value = $site_filter_config_value_array['value'];
        $site_filter_config_elements = $site_filter_config_value_array['elements'];

        if (!empty($site_filter_config_elements)) {
            $site_filter_config_elements_row_array = explode('||', $site_filter_config_elements);
            if (count($site_filter_config_elements_row_array) > 0) {
                $filter_conf_arr_keys = [];
                $filter_conf_arr_vals = [];
                foreach ($site_filter_config_elements_row_array as $filter_conf_row) {
                    $filter_conf_col_arr = explode('==', $filter_conf_row);
                    if (count($filter_conf_col_arr) > 0) {
                        $filter_conf_arr_keys[] = $filter_conf_col_arr[1];
                        $filter_conf_arr_vals[] = $filter_conf_col_arr[0];
                    }
                }

            }
        }

        if ($site_test_mode_value === true) {
            if (isset($_SESSION['site_config']['filter_type'])) {
                if (in_array($_SESSION['site_config']['filter_type'], $filter_conf_arr_keys)) {
                    $site_filter_config_value = $_SESSION['site_config']['filter_type'];
                }
            }
        }

        $filter_conf_option_str = '';
        if (!empty($filter_conf_arr_keys) && !empty($filter_conf_arr_vals)) {
            $filter_conf_vars_arr = array_combine($filter_conf_arr_keys, $filter_conf_arr_vals);
            foreach ($filter_conf_vars_arr as $filter_conf_vars_key => $filter_conf_vars_value) {
                $selected_attr = '';
                if ($filter_conf_vars_key === $site_filter_config_value) {
                    $selected_attr = 'selected';
                } else {
                    $selected_attr = '';
                }
                $filter_conf_option_str .= "<option value='{$filter_conf_vars_key}' {$selected_attr}>{$filter_conf_vars_value}</option>" . PHP_EOL;
            }
        }
    }
    /*Конец фильтра*/

    /*Парсим чанк с параметрами*/
    $parse_chunk_var_arr = array(
        'site_test_mode_checked' => $site_test_mode_checked,
        'options_header' => $header_conf_option_str,
        'options_breadcrumbs' => $breadcrumbs_conf_option_str,
        'options_footer' => $footer_conf_option_str,
        'options_basket' => $basket_conf_option_str,
        'site_test_mode_active' => $site_test_mode_active,
        'search_catalog_only_checked' => $search_catalog_only_checked,
        'search_catalog_only_active' => $search_catalog_only_active,
        'search_catalog_id_value' => $search_catalog_id_value,
        'options_filter' => $filter_conf_option_str
    );
    $output = $modx->parseChunk($form_config_gen_chunk_name, $parse_chunk_var_arr, '[+', '+]');
    return $output;
}
