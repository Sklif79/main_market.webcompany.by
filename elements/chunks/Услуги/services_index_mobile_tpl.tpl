name:services_index_mobile_tpl
description:Шаблон вывода превью услуг на главной мобильная версия
======
<div class="service-m-el">
	<img src="[[phpthumb? &input=`[+services_index_prew_img+]` &options=`w=349,h=206,f=png,q=85,zc=C,bg=ffffff`]]" alt="">
	<div class="service-m-el__overlay"></div>
	<div class="service-m-el__title">
		[+title+]
	</div>
	<a href="[+url+]"></a>
</div>