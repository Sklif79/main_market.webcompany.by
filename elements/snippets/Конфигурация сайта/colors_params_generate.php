name:colors_params_generate
description:Генерируем вывод опций цвета в форме настроек
======
<?php
<?php
/*
Генерируем вывод опций выбора цвета в форме настроек
* @author Rising13 *
* ver. 1.0.0 *
*/
	/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
	include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);

/*Получаем параметры с вызова сниппета*/	
$id_param_val=(isset($id_param_val)) ? $id_param_val: $modx -> documentObject['id_param_val'];	//id страницы конфигурации
$id_options=(isset($id_options)) ? $id_options: $modx -> documentObject['id_options'];	//id страницы с вариантами опций
$tv_options_name=(isset($tv_options_name)) ? $tv_options_name: $modx -> documentObject['tv_options_name'];	//Имя TV-параметра c вариантами опций
$tv_param_val_name=(isset($tv_param_val_name)) ? $tv_param_val_name: $modx -> documentObject['tv_param_val_name'];	//Имя TV-параметра c значением опции
$options_return_tpl = (isset($options_return_tpl)) ? $options_return_tpl: $modx -> documentObject['options_return_tpl'];	//название чанка с выводом значений параметров
$custom_color_return_tpl = (isset($custom_color_return_tpl)) ? $custom_color_return_tpl: $modx -> documentObject['custom_color_return_tpl'];	//название чанка с выводом формы для ввода цвета
$session_param_name = (isset($session_param_name)) ? $session_param_name: $modx -> documentObject['session_param_name'];	//название параметра в сессии для тестового режима
$input_name = (isset($input_name)) ? $input_name: $modx -> documentObject['input_name'];	//название параметра в атрибуте name тега input

/*Задаем значения по умолчанию*/
$id_param_val = ($id_param_val!='') ? $id_param_val : '99';
$id_options = ($id_options!='') ? $id_options : '1774';


/*Получаем текущее значение опции*/
if($tv_options_name != '' && $tv_param_val_name != '' && $options_return_tpl != ''){
	/*Получаем значение опции "тестовый режим"*/
	$site_test_mode_value = $configch->test_mode();

	/*Проверяем, что сайт находится в тестовом режиме*/
	if ($site_test_mode_value === true) {
		$option_value = (string) $configch->get_config_session($session_param_name);
	}else{ //Для администратора
		$option_value = (string) $configch->doc_get_value($id_param_val,$tv_param_val_name);
	}

	/*Получаем значения опций в виде массива*/
	$snippet_name = 'ddGetMultipleField';
	$snippet_params = array(
		'inputString_docId' => $id_options,
		'inputString_docField' => $tv_options_name,
		'outputFormat' => 'array',
	);
	$options_vars_value_array = $modx->runSnippet($snippet_name, $snippet_params); //делаем обращение к сниппету c нужными параметрами

	$colors_value_array = array_column($options_vars_value_array,2); //Получаем значения цветов из предзаданных

	$in_def_colors = false; //Задаем значение по умолчанию для проверки на наличие в массиве

	/*Проверяем на наличие значения в массиве*/
	if(in_array($option_value,$colors_value_array)){
		$in_def_colors = true;
	}

	/*Получаем значения, парсим чанк, выводим*/
	$result = '';
	if(!empty($options_vars_value_array)){
		$iteration = 1;
		foreach($options_vars_value_array as $options_str_val){
			$is_checked = '';
			$tv_image = $options_str_val[0];
			$tv_title = $options_str_val[1];
			$tv_value = $options_str_val[2];
			$tv_name = $tv_param_val_name;
			if($in_def_colors){
				if($tv_value==$option_value){
					$is_checked = 'checked';
				}
			}
			$parseChunk_params_array = array(
				'tv_image'=>$tv_image,
				'tv_title'=>$tv_title,
				'tv_value'=>$tv_value,
				'tv_name'=>$input_name,
				'is_checked'=>$is_checked,
				'iteration'=>$iteration
			);
			$iteration++;
			$result_str = $modx->parseChunk($options_return_tpl, $parseChunk_params_array, '[+', '+]' );
			$result .= $result_str.PHP_EOL;
		}
	}

	if(isset($custom_color_return_tpl) && $custom_color_return_tpl != ''){
		$is_checked = '';
		$default_custom_color = '#F4D03F';

		if(!$in_def_colors){
			$is_checked = 'checked';
			$tv_value = $option_value;
		}else{
			$tv_value = $default_custom_color;
		}

		$parseChunk_custom_color_params_array = array(
			'tv_value'=>$tv_value,
			'tv_name'=>$input_name,
			'is_checked'=>$is_checked
		);

		$result_custom_color = $modx->parseChunk($custom_color_return_tpl, $parseChunk_custom_color_params_array, '[+', '+]' );
		$result .= $result_custom_color.PHP_EOL;
	}

	return $result;
}
