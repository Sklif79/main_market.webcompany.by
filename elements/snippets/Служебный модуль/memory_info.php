name:memory_info
description:Проверить, что авторизован администратор и вывести информацию о генерации сайта
======
<?php

$is_manager = $modx->checkSession();
if($is_manager){
	return "{{memory_info}}";
}