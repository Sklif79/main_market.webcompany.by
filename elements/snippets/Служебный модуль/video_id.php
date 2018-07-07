name:video_id
description:Получение id видео с youtube
======
<?php

/*
Получаем id видео с youtube из ссылки
* @author Rising13 *
* ver. 1.0.0 *
*/
	$video_url=(isset($video_url)) ? $video_url: $modx -> documentObject['video_url'];	//id страницы
if (!empty($video_url)) {

	if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $video_url, $match)) { 
		$video_id = $match[1]; 
		if(empty($video_id)){
			$video_id = $video_url;
		}
	}else{
		$video_id = $video_url;
	}
	return $video_id;
}