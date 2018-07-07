name:prod_ins_slider_gallery_new_outer_tpl
description:Шаблон контейнера галерея изображений на  странице подробное описание товара новая версия
======
<div class="main-first-image-wrap">
	
	<div class="product-icons">		

		[[if? &is=`[*novelty*]:=:1` &then=`<div class="new" data-uk-tooltip="{pos:'left'}" title="Новинки">new</div>`]]
		[[if? &is=`[*sale*]:=:1` &then=`<div class="sale" data-uk-tooltip="{pos:'left'}" title="Распродажа">-[*sale_persent*]%</div>`]]
		[[if? &is=`[*bestseller*]:=:1` &then=`<div class="hit" data-uk-tooltip="{pos:'left'}" title="Хит">Хит</div>`]]
	</div>
	
	<div class="main-first-image-slider">
		[+result+]
	</div>
</div>