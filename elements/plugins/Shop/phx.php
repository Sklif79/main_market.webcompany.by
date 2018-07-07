name:phx
description:<strong>2.1.4</strong> (Placeholders Xtended) Adds the capability of output modifiers when using placeholders, template variables and settings tags
======
<?php
include_once $modx->config['rb_base_dir'] . "plugins/phx/phx.parser.class.inc.php";

$e = &$modx->Event;

$PHx = new PHxParser($phxdebug,$phxmaxpass);

switch($e->name) {
	case 'OnParseDocument':
		$PHx->OnParseDocument();
		break;

}