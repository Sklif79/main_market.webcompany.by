name:certificate_card_tpl
description:шаблон вывода сертификатов страница карточка товаров
======
<div class="sertificates-item">
	<a href="[+col0+]" data-uk-lightbox="{group:'group1'}" title="[+col3+]">
		<img src="[[if? &is=`[+col1+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`w=211,h=297,ws=211,hs=211,wl=211,hl=150,f=png,q=95,far=C,bg=ffffff`]]` &else=`[[phpthumb? &input=`[+col1+]` &options=`w=211,h=297,ws=211,hs=211,wl=211,hl=150,f=png,q=95,far=C,bg=ffffff`]]`]]" alt="[+col3+]"/>
	</a>
</div>