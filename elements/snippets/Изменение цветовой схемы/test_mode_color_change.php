name:test_mode_color_change
description:Изменение цветовой схемы для тестового режима
======
<?php
<?php
/*
Изменение цветовой схемы для тестового режима
* @author Rising13 *
* ver. 1.0.1 *
*/
	
/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);	
	
/***Задаем необходимые функции***/

/*Функция автоматической компиляции less файла без кеширования*/
if (!function_exists(CompileLessTestMode)) {
    function CompileLessTestMode($inputFile, $outputFile, $variables)
    {
        /*Подключаем библиотеку компиляции файлов less*/
        require_once('assets/libs/lessphp/lessc.inc.php');
        $less = new lessc;
        $less->setFormatter("compressed");
        $less->setVariables($variables);
        try {
            $less->compileFile($inputFile, $outputFile);
        } catch (Exception $ex) {
            echo "lessphp fatal error: " . $ex->getMessage();
        }
    }
}

/*Задаем адресс исходного сайта less и скомпилированного файла css*/
$inputFileLess = 'assets/templates/market/less/external-variables.less';
$files_compile_colors_path = MODX_BASE_PATH . 'assets/cache/compile_colors/';

/*Задаем параметры по умолчанию*/
$color_params_def = array(
    "primary-color" => "#c90b2e",
    "primary-btn" => "#c90b2e",
    "substrate-background" => "#c90b2e"
);

$config_page_id = 99; //id страницы конфигурации сайта

/*Определяем, является ли режим тестовым*/

$site_test_mode_value = $configch->test_mode();

if ($site_test_mode_value === true) {
    $tv_params_colors_name_array = array_keys($color_params_def);
    if (!empty($_SESSION['site_config'])) {
        if (isset($_SESSION['site_config']['primary-color'])) {
			$primary_color_val = (string) $configch->get_config_session('primary-color');
        } else {
			$primary_color_val = (string) $configch->doc_get_value($config_page_id,'primary-color');
        }

        if (isset($_SESSION['site_config']['primary-btn'])) {
            $primary_btn_val = (string) $configch->get_config_session('primary-btn');
        } else {
			$primary_btn_val = (string) $configch->doc_get_value($config_page_id,'primary-btn');
        }

        if (isset($_SESSION['site_config']['substrate-background'])) {
            $substrate_background_val = (string) $configch->get_config_session('substrate-background');
        } else {
			$substrate_background_val = (string) $configch->doc_get_value($config_page_id,'substrate-background');
        }

    } else {
        $tv_param_colors_val = $modx->getTemplateVars($tv_params_colors_name_array, '*', $config_page_id);
        if (!empty($tv_param_colors_val)) {
            $primary_color_val = $tv_param_colors_val[0]['value'];
            $primary_btn_val = $tv_param_colors_val[1]['value'];
            $substrate_background_val = $tv_param_colors_val[2]['value'];
        }
    }

    /*Создаем массив с параметрами для вывода цвета*/
    $color_params = array();
    $color_params['primary-color'] = $primary_color_val;
    $color_params['primary-btn'] = $primary_btn_val;
    $color_params['substrate-background'] = $substrate_background_val;

    /*Получаем md5 из значений цветовых переменных*/
    $params_md5 = md5($primary_color_val . $primary_btn_val . $substrate_background_val);
    $outputFileCssName = 'external_variables_' . $params_md5 . '.css';
    $outputFileCssPath = $files_compile_colors_path . $outputFileCssName;
    $outputFileCssPath_relative = 'assets/cache/compile_colors/' . $outputFileCssName;

    /*Получаем значение параметра "Кешировать вывод"*/
	$no_less_cache_val = (bool) $configch->doc_get_value($config_page_id,'no_less_cache');

    if ($no_less_cache_val) {
        CompileLessTestMode($inputFileLess, $outputFileCssPath, $color_params);
    } else {
        if (!file_exists($outputFileCssPath)) {
            CompileLessTestMode($inputFileLess, $outputFileCssPath, $color_params);
        }
    }
    if (file_exists($outputFileCssPath)) {
        $return_file = $outputFileCssPath_relative . "?" . filemtime($outputFileCssPath);
        $output_str = "<link rel=\"stylesheet\" href=\"{$return_file}\">";
        return $output_str;
    }
}
