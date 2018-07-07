name:searchpreparethumb
description:Изображения для поиска
======
<?php

$img_value = '/assets/snippets/phpthumb/noimage.png';
$phumb_options = 'w=140,h=140,f=png,q=84,far=C,bg=ffffff';

$img_tv_params = $_DocLister->getCFGDef('tvList');
$img_tv_params_array = explode(',',$img_tv_params);

foreach($img_tv_params_array as $img_name_val){
	if(!empty($data[$img_name_val])){
		$img_value = $data[$img_name_val];
		break;
	}
}

if(!empty($img_value)){
	$snippet_name = 'phpthumb';
	$arrparams = array('input' => $img_value,'options' => $phumb_options);
	$thumb_image_value = $modx->runSnippet($snippet_name,$arrparams);//делаем обращение к сниппету c нужными параметрами
	$data['image'] = $thumb_image_value; //Ссылка на обработанное изображение
}
return $data;