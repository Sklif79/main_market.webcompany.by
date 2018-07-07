name:certificate_index_2_tpl
description:шаблон вывода элементов на главной вариант 2
======
<div class="certificates-element">
	<a title="[+col2+]" data-uk-lightbox="{group:'group1'}" data-lightbox-type="image" href="[+col0+]">
		<img src="[[if? &is=`[+col1+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`wp=111,wl=230,ws=155,h=155,f=png,q=95,far=C,bg=ffffff`]]` &else=`[[phpthumb? &input=`[+col1+]` &options=`wp=111,wl=230,ws=155,h=155,f=png,q=95,far=C,bg=ffffff`]]`]]" alt="[+col2+]"/>
	</a>
</div>