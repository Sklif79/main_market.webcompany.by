name:test_colors_files_cache_clear
description:Очищает папку с тестовыми файлами цветов при очистке кеша
======
<?php
/*Задаем соответствующую функцию*/
if(!function_exists(clear_files_in_folder)){
	function clear_files_in_folder($folder) {
		if (file_exists($folder)) {
			foreach (glob($folder.'*') as $file) {
				unlink($file);
			}
		}
	}
}

$e = $modx->Event;
if($e->name == 'OnSiteRefresh') {
	$test_color_cache_folder = MODX_BASE_PATH.'assets/cache/compile_colors/';
	clear_files_in_folder($test_color_cache_folder);
}