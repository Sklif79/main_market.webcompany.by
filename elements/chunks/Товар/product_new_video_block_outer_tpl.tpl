name:product_new_video_block_outer_tpl
description:Контейнер вывода видео на странице карточка товара
======
<div class="video-block">
	[[if? &is=`[+template+]:!=:153` &then=`<h4>Видео</h4>`]]
	<div class="video-block-inner">
		[+result+]
	</div>
</div>