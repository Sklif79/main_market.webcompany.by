name:prod_ins_slider_gallery_new_tpl
description:шаблон вывода изображений для слайдера товара новая версия
======
<!--  -->
<div class="main-first-image-slider-el">
	<a href='[+col0+]' data-uk-lightbox="{group:'group-product'}">
		<img src="[[phpthumb? &input=`[+col0+]` &options=`w=340,h=340,f=png,q=95,far=C,bg=ffffff`]]" alt="">
		<div class="main-first-image-slider-el__overlay"></div>
	</a>
</div>