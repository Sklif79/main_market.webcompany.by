name:prod_ins_slider_gallery_big_tpl
description:галерея товар подробнее большие изображения шаблон вывода элемента
======
<li>
	<a href="[+col0+]" data-uk-lightbox="{group:'product'}" title="[+col2+]">
		<img src="[[phpthumb? &input=`[+col0+]` &options=`w=395,h=395,f=png,q=95,far=C,bg=ffffff`]]"/>
	</a>
</li>