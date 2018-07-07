name:gallery_project_tpl
description:шаблон вывода элементов галереи выполненного проекта
======
<div class="gallery-images__el">
	<img src="[[if? &is=`[+col1+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`w=284,h=192,f=png,q=95,zc=C,bg=ffffff`]]` &else=`[[phpthumb? &input=`[+col1+]` &options=`w=284,h=192,f=png,q=95,zc=C,bg=ffffff`]]`]]" alt="[+col2+]"/>
	<a href="[+col0+]" data-uk-lightbox="{group:'group1'}" title="[+col2+]"></a>
</div>