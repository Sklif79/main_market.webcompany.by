name:card_gallery_pager_tpl
description:Шаблон вывода превью галереи большой
======
<div class="card-gallery-slider-pager__el">
	<img src="[[if? &is=`[+col1+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`w=88,h=88,f=png,q=85,far=C,bg=ffffff`]]` &else=`[[phpthumb? &input=`[+col1+]` &options=`w=88,h=88,f=png,q=85,far=C,bg=ffffff`]]`]]" alt="">
</div>