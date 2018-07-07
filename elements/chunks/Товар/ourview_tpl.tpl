name:ourview_tpl
description:Шаблон вывода превью просмотренных товаров
======
<div class="watched-el">
	<a href="[+url+]">
		<img src="[+ourview_tpl+][[phpthumb? &input=`[+product_prev+]` &options=`w=76,h=76,f=png,q=95,far=C,bg=ffffff`]]" alt="[+title+]">
	</a>
	<div class="watched-el__tooltip">
		[+title+]
	</div>
</div>