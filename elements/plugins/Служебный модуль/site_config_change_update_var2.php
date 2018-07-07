name:site_config_change_update_var2
description:Изменяем конфигурацию сайта по информации из формы в бакэнде вариант №2
======
<?php
/*Подключаем класс на базе библиотеки MODxAPI, создаем объект*/

include_once(MODX_BASE_PATH . "assets/libs/Rising13_lib/ConfigChange.php");
$configch = new ConfigChange($modx);

/*Задаем параметры*/
/*id страницы с конфигурационными параметрами*/
$config_page_id = $configch->config_page_id;
/*TV-параметры, которые должны обрабатываться нестандартно*/
$specific_config_tv_params = array('no_busket_btn', 'add_custom_pages_main', 'add_custom_pages_proj_main','contacts_template_config');

$tv_params_config_array = $configch->tv_names_from_page_array($config_page_id); //названия TV-параметров с конфигурацией

/*Проверяем, что у нас запрос на изменение параметров*/
if ($configch->post_escape('change_site_config') === '1') {
	/*Определяем тестовый режим*/
	$site_test_mode_value = $configch->test_mode();

	/*Получаем тип авторизованного пользователя*/
	$sesUserType = isset($_SESSION['usertype']) ? $_SESSION['usertype'] : '';

	/*Проверяем, что у нвс авторизован администратор или включен тестовый режим*/
	if (($sesUserType === 'manager') || ($site_test_mode_value === true)) {
		/*Проходимся по передаваемым из формы значениям*/
		foreach ($_POST as $post_key => $post_value) {
			/*Проверяем, есть ли эти значения среди значений, которые можно менять*/
			if (in_array($post_key, $tv_params_config_array)) {
				$post_value_escape = (string)$configch->post_escape($post_key);
				/*Проверяем, что сайт находится в тестовом режиме*/
				if ($site_test_mode_value === true) {
					/*Сайт в тестовом режиме. Меняем значения сессии для данного параметра*/
					if ($post_key === 'no_busket_btn') {
						$post_value_escape = (int)$post_value_escape;
						$post_value_escape = abs($post_value_escape -= 1);
					}
					$configch->change_config_session($post_key, $post_value_escape);
				} else {
					/*Сайт в обычном режиме. Администратор авторизован*/
					/*Проверяем значения на пустоту и на то, что параметр обрабатывается стандартно*/
					if ($post_value_escape !== '' && !in_array($post_key, $specific_config_tv_params)) {
						/*Значение не пустое и параметр обрабатывается стандартно*/
						/*Изменяем значение TV-параметра*/
						$configch->doc_set_value($config_page_id, $post_key, $post_value_escape);
					} elseif ($post_value_escape !== '' && in_array($post_key, $specific_config_tv_params)) {
						/*Значение не пустое и параметр обрабатывается нестандартно*/
						/*Вызываем соответствующий алгоритм для каждого из параметров*/
						switch ($post_key) {
								/*Отключение корзины. Отключается сниппет */
							case 'no_busket_btn':
								$post_value_escape = (int)$post_value_escape;
								$post_value_escape = abs($post_value_escape -= 1);
								$configch->doc_set_value($config_page_id, $post_key, $post_value_escape);
								$configch->disable_snippet(37, $post_value_escape);
								break;
								/*Включение блока страниц пользователя "Услуги". TV-параметр меняется на главной странице(id=1)*/
							case 'add_custom_pages_main':
								$config_page_id = 1;
								$configch->doc_set_value($config_page_id, $post_key, $post_value_escape);
								break;
								/*Включение блока страниц пользователя "Проекты". TV-параметр меняется на главной странице(id=1)*/
							case 'add_custom_pages_proj_main':
								$config_page_id = 1;
								$configch->doc_set_value($config_page_id, $post_key, $post_value_escape);
								break;
								/*Включение блока страниц пользователя "Проекты". TV-параметр меняется на главной странице(id=1)*/
							case 'contacts_template_config':
								$configch->doc_set_value($config_page_id, $post_key, $post_value_escape);
								if($site_test_mode_value !== true){
									$config_page_id = 6;
									$change_param_name = 'template';
									$configch->doc_set_value($config_page_id, $change_param_name, $post_value_escape);
								}
								break;
						}
					}
				}
			}
		}
		$modx->clearCache('full');
	}
}