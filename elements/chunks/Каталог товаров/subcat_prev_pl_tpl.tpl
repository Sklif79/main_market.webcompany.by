name:subcat_prev_pl_tpl
description:Шаблон вывода элементов подкаталога товаров
======
<div class="sub-catalog-el">
	<div class="sub-catalog__img">
		<a href="[+url+]">
			<img src="[[phpthumb? &input=`[+subcat_img_prew+]` &options=`w=60,h=60,f=png,q=95,far=C,bg=ffffff`]]" alt="[+title+]">
		</a>									
	</div>
	<div class="sub-catalog__title">
		<a href="[+url+]"><span>[+title+]</span></a>
	</div>
</div>