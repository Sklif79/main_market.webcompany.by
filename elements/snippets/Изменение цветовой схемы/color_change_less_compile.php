name:color_change_less_compile
description:Изменение цветовой схемы и последующая компиляция less файлов
======
<?php

/*Задаем адресс исходного сайта less и скомпилированного файла css*/
	$inputFileLess = "assets/templates/market/less/style.less";
$outputFileCss = "assets/templates/market/css/style-compile.css";

/*Подключаем библиотеку компиляции файлов less*/
require_once("assets/libs/lessphp/lessc.inc.php");

/*Задаем параметры по умолчанию*/
$color_params_def=array(
	"primary-color" => "#c90b2e",
	"primary-btn" => "#c90b2e",
	"primary-btn-text" => "#fff",
	"primary-btn-text-hover" => "#fff",
	"primary-btn-bg" => "#fff",
	"primary-btn-border" => "#9d9d9d",
	"primary-btn-border-text" => "#9d9d9d",
	"primary-btn-bg-hover" => "#9d9d9d",
	"primary-btn-border-text-hover" => "#fff",
	"more-link" => "#9d9d9d",
	"more-link-border" => "#9d9d9d",
	"link-dashed" => "#9d9d9d",
	"title-page" => "#333",
	"modal-primary" => "#9d9d9d",
	"modal-close" => "#9d9d9d",
	"modal-title" => "#9d9d9d",
	"buy-btn" => "#f82900",
	"buy-btn-hover" => "darken(@buy-btn, 5%)",
);

$color_params=array();

/*Получим массив значений с сайта*/
foreach($color_params_def as $key => $value) { 
	$color_val_arr= $modx->getTemplateVar($key,'*',99);
	$color_val = $color_val_arr[value];
	if ($color_val=="" or is_null($color_val)) {
		$color_val= $value;
	}
	$color_params[$key]=$color_val;
}

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
echo $outputFileCss."?".md5($outputFileCss);