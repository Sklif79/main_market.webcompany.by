name:logo_header_tpl
description:Шаблон вывода логотипа в верхней части сайта
======
<div class="logo">[[if? &is=`[*id*]:!=:1` &then=`<a href="/"><img class="svg" id="header-logo" src="[+col0+]" alt="Логотип компании"/></a>`
	&else=`<img class="svg" id="header-logo" src="[+col0+]" alt="Логотип компании"/>`]]</div>
<div class="slogan">
	[+col2+]
</div>