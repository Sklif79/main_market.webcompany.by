name:settings_form_params_of_tv
description:Генерируем вывод опций в форме настроек. Опции берутся из конфигурации сайта
======
<?php
<?php
/**
 * settings_form_params_of_tv
 *
 * Генерируем вывод опций в форме настроек. Опции берутся из конфигурации сайта
 *
 * @category 	snippet
 * @version 	1.0
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 * @author      Rising13
 * @lastupdate  29/05/2018
 */

	/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/
	include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);	

/*Получаем параметры из вызова сниппета*/	
$id_param_val=(isset($id_param_val)) ? $id_param_val: $modx -> documentObject['id_param_val'];	//id страницы конфигурации
$tv_options_name=(isset($tv_options_name)) ? $tv_options_name: $modx -> documentObject['tv_options_name'];	//Имя TV-параметра c вариантами опций
$options_return_tpl = (isset($options_return_tpl)) ? $options_return_tpl: $modx -> documentObject['options_return_tpl'];	//название чанка с параметрами

/*Задаем значения по умолчанию*/
$result = '';
$iteration = 1;
if($id_param_val==''){
	$id_param_val = '99';
}

if($tv_options_name != '' && $options_return_tpl != ''){

	/*Получаем значение опции "тестовый режим"*/
	$site_test_mode_value = $configch->test_mode();	
	/*Проверяем, что сайт находится в тестовом режиме*/
	if ($site_test_mode_value === true) {
		/*
	*Сайт в тестовом режиме
	*Получаем значение параметра включения корзины из сессии
	*/
		$option_value = (string) $configch->get_config_session($tv_options_name);
	}else{
		/*
	*Сайт в боевом режиме
	*Получаем значение параметра включения корзины из значения TV параметра со страницы конфигурации
	*/
		$option_value = (string) $configch->doc_get_value($id_param_val,$tv_options_name);
	}
	
	/*получаем значение опции по умолчанию*/
	$default_option = (string) $configch->get_tv_default_option($tv_options_name);
	
	$option_value = ($option_value !== '') ? $option_value : $default_option;

	/*Получаем массив возможных значений опций TV-параметров*/
	$elements_array = $configch->get_tv_options($tv_options_name);

	if(is_array($elements_array) && !empty($elements_array)){


		foreach($elements_array as $elements_key => $elements_value){
			$is_checked = '';
			if($option_value==$elements_value){
				$is_checked = 'checked';
			}
			$parseChunk_params_array = array(
				'tv_title'=>$elements_key,
				'tv_value'=>$elements_value,
				'tv_name'=>$tv_options_name,
				'is_checked'=>$is_checked,
				'iteration'=>$iteration
			);
			$iteration++;
			$result_str = $modx->parseChunk($options_return_tpl, $parseChunk_params_array, '[+', '+]' );
			$result .= $result_str.PHP_EOL;
		}
	}
	return $result;
}
