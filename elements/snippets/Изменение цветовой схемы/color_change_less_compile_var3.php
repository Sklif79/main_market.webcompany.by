name:color_change_less_compile_var3
description:Изменение цветовой схемы и последующая компиляция less файлов вариант 3 с проверкой файлов
======
<?php

/*Задаем адресс исходного сайта less и скомпилированного файла css*/
$inputFileLess = 'assets/templates/market/less/style.less';
$less_path = 'assets/templates/market/less/';
$files_md5_cache = MODX_BASE_PATH . 'assets/cache/files_md5_cache.json';
$file_params_cache = MODX_BASE_PATH . 'assets/cache/less_params_cache.json';
$file_less_md5_cache = MODX_BASE_PATH . 'assets/cache/less_md5_cache.txt';
$outputFileCss = 'assets/templates/market/css/style-compile.css';
$clear_css = 0;

/*Подключаем библиотеку компиляции файлов less*/
require_once('assets/libs/lessphp/lessc.inc.php');

/*Задаем параметры по умолчанию*/
$color_params_def = array(
    "primary-color" => "#c90b2e",
    "primary-btn" => "#c90b2e",
    "buy-btn-hover" => "darken(@buy-btn, 5%)",
);

$color_params = array();

/*Получим массив значений с сайта*/
$color_params_name = array_keys($color_params_def);
$color_val_arr = $modx->getTemplateVars($color_params_name, 'name', 99);
//$color_val_arr;


foreach ($color_val_arr as $color_arr_val) {
    $color_val = $color_arr_val['value'];
    if ($color_val == '' or is_null($color_val)) {
        $color_val = $color_params_def[$color_arr_val['name']];
    }
    $color_params[$color_arr_val['name']] = $color_val;
}

if ($open_less_path = scandir($less_path)) {
    $files_md5_array = [];
    foreach ($open_less_path as $v) {
        if (!empty($v) && file_exists($v)) {
            $files_md5_array[] = md5_file($v);
        }
    }
    $files_md5_json = json_encode($color_params);
}


$color_params_json = json_encode($color_params);
$FileLess_md5_val = md5(file_get_contents($inputFileLess));

if ((!file_exists($file_params_cache) || (file_exists($file_params_cache) && md5(file_get_contents($file_params_cache)) !== md5($color_params_json)))
    || (!file_exists($file_less_md5_cache) || (file_exists($file_less_md5_cache) && (file_get_contents($file_less_md5_cache) !== $FileLess_md5_val))) || (!file_exists($files_md5_cache) || (file_exists($files_md5_cache) && (file_get_contents($files_md5_cache) !== $files_md5_json)))) {

    file_put_contents($file_params_cache, $color_params_json);
    file_put_contents($file_less_md5_cache, $FileLess_md5_val);
    file_put_contents($files_md5_cache, $files_md5_json);
    $clear_css = 1;
    /*Функция автоматической компиляции less файла с проверкой на изменение файла less и на изменение переменных*/
    function autoCompileLess($inputFile, $outputFile, $variables, $clear_css)
    {

        // load the cache
        $cacheVariablesFile = $inputFile . ".variables.cache";
        $file_less_md5_cache = MODX_BASE_PATH . 'assets/cache/less_md5_cache.txt';

        if (file_exists($cacheVariablesFile)) {
            $cacheVariables = file_get_contents($cacheVariablesFile);
        } else {
            $cacheVariables = "";
        }
        if (file_exists($cacheVariablesFile)) {
            $cacheVariables = file_get_contents($cacheVariablesFile);
        } else {
            $cacheVariables = "";
        }
        $cacheVariables = "";
        $less = new lessc;
        if (!file_exists($outputFile) || serialize($variables) != $cacheVariables || $clear_css === 1) {
            $less->setFormatter("compressed");
            $less->setVariables($variables);
            $less->compileFile($inputFile, $outputFile);
            file_put_contents($cacheVariablesFile, serialize($variables));
        }
    }

    /*Задаем параметры*/
    autoCompileLess($inputFileLess, $outputFileCss, $color_params, $clear_css);
}
echo $outputFileCss . "?" . md5($outputFileCss);