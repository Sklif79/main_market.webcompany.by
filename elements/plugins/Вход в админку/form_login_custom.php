name:form_login_custom
description:Кастомизация страницы входа в админку
======
<?php
/**/
$e = $modx->Event;
if($e->name == 'OnManagerLoginFormRender') {
	$html_val = isset($html_val) ? $html_val: '';
	$css_val = isset($css_val) ? $css_val: '';
	$js_val = isset($js_val) ? $js_val: '';
	$output = $html_val . $css_val . $js_val;
}
$e->output($output);