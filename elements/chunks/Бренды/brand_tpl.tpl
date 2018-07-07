name:brand_tpl
description:Шаблон вывода иконки бренда в карточке товара
======
<div class="main-first-info__brand">
	<a href="[+url+]" title="[+title+]">
		<img src="[[phpthumb? &input=`[+brand_img+]` &options=`h=25,f=png,q=85,far=C,bg=ffffff`]]" alt="[+title+]">
	</a>
</div>