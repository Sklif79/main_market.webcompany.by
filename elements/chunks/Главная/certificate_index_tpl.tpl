name:certificate_index_tpl
description:шаблон вывода элементов на главной
======
<div class="certificates-element">
	<a title="[+col3+]" data-uk-lightbox="{group:'group1'}" data-lightbox-type="image" href="[+col0+]">
		<img src="[[if? &is=`[+col2+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`wp=111,wl=230,ws=155,h=155,f=png,q=95,far=C,bg=ffffff`]]` &else=`[[phpthumb? &input=`[+col2+]` &options=`wp=111,wl=230,ws=155,h=155,f=png,q=95,far=C,bg=ffffff`]]`]]" alt="[+col3+]"/>
	</a>
</div>