name:services_tpl
description:Шаблон вывода услуги в каталоге услуг
======
<div class="sale-page uk-grid">
	<div class="uk-width-1-1 uk-width-large-1-3 uk-width-medium-2-5 uk-text-center">
		<a href="[+url+]"><img src="[[phpthumb? &input=`[+services_img_prev_new+]` &options=`w=392,h=192,f=png,q=95,far=C,bg=ffffff`]]" alt="[+pagetitle+]"/></a>
	</div>
	<div class="uk-width-1-1 uk-width-large-2-3 uk-width-medium-3-5">
		<a href="[+url+]" class="title">[+pagetitle+]</a>
		<p>[+introtext+]</p>
		<a href="[+url+]" class="button-usluga">Читать подробнее</a>
	</div>
</div>
<hr class="margin"/>