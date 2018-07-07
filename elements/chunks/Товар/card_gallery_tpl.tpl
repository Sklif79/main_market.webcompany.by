name:card_gallery_tpl
description:Шаблон вывода элементов галереи большой
======
<div class="card-gallery-slider__el">
	<a href="[+col0+]" title="[+col2+]" data-uk-lightbox="{group:'group-galery'}">
		<img src="[[phpthumb? &input=`[+col0+]` &options=`h=445,f=png,q=85,far=C,bg=ffffff`]]" alt="[+col2+]">
		<div class="card-gallery-slider__overlay"></div>
	</a>
</div>