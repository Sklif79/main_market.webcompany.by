name:bottom_text_prod
description:Скрываем текст в нижнем блоке при пагинации
======
<?php
<?php
	$pagination = (int) $_GET['product_page'];
if(!isset($pagination) || $pagination <= 1){
	$bottom_text = <<<EOT
<div class="uk-margin-bottom">
	[*bottom_text_prod_group_block*]
</div>
EOT;
	return $bottom_text;
}