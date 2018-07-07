name:color_change_less_compile_var2
description:Изменение цветовой схемы и последующая компиляция less файлов вариант 2
======
<?php
<?php
/*Задаем адресс исходного сайта less и скомпилированного файла css*/
	$inputFileLess = 'assets/templates/market/less/style.less';
$file_params_cache = MODX_BASE_PATH.'assets/cache/less_params_cache.json';
$outputFileCss = 'assets/templates/market/css/style-compile.css';

/*Подключаем библиотеку компиляции файлов less*/
require_once('assets/libs/lessphp/lessc.inc.php');

/*Задаем параметры по умолчанию*/
$color_params_def=array(
	"primary-color" => "#c90b2e",
	"primary-btn" => "#c90b2e",
	"substrate-background" => "#c90b2e"
);

$color_params=array();

/*Получим массив значений с сайта*/
$color_params_name = array_keys($color_params_def);
$color_val_arr = $modx->getTemplateVars($color_params_name,'name', 99);

/*Получаем значение параметра "Кешировать вывод"*/
$no_less_cache_arr = $modx->getTemplateVar('no_less_cache','name', 99);
$no_less_cache_val = (bool) $no_less_cache_arr['value'];



foreach($color_val_arr as $color_arr_val) {
	$color_val = $color_arr_val['value'];
	if ($color_val=="" or is_null($color_val)) {
		$color_val= $color_params_def[$color_arr_val['name']];
	}
	$color_params[$color_arr_val['name']]=$color_val;
}


if($no_less_cache_val){
	/*Функция автоматической компиляции less файла без кеширования*/
	function CompileLessNoCache($inputFile, $outputFile, $variables) {
		$less = new lessc;
		$less->setFormatter("compressed");
		$less->setVariables($variables);
		$less->compileFile($inputFile,$outputFile);
	}
	CompileLessNoCache($inputFileLess, $outputFileCss,$color_params);

}else{

	$color_params_json = json_encode($color_params);

	if (!file_exists($file_params_cache) || (file_exists($file_params_cache) && md5(file_get_contents($file_params_cache))!== md5($color_params_json))) {

		file_put_contents($file_params_cache, $color_params_json);

		/*Функция автоматической компиляции less файла с проверкой на изменение файла less и на изменение переменных*/
		function autoCompileLess($inputFile, $outputFile, $variables) {

			// load the cache
			$cacheVariablesFile = $inputFile.".variables.cache";

			if (file_exists($cacheVariablesFile)) {
				$cacheVariables = file_get_contents($cacheVariablesFile);
			} else {
				$cacheVariables = "";
			}
			$cacheVariables = "";
			$less = new lessc;
			if (!file_exists($outputFile) || serialize($variables)!=$cacheVariables) {
				$less->setFormatter("compressed");
				$less->setVariables($variables);
				$less->compileFile($inputFile,$outputFile);
				file_put_contents($cacheVariablesFile, serialize($variables));	
			}
		}

		/*Задаем параметры*/
		autoCompileLess($inputFileLess, $outputFileCss,$color_params);
	}
}

$color_params_values = array_values($color_params);
$md5_color_params = md5(implode('',$color_params_values));
echo $outputFileCss."?".md5($outputFileCss).$md5_color_params.filemtime($outputFileCss);
