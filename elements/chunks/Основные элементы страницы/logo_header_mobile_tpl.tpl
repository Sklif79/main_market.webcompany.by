name:logo_header_mobile_tpl
description:Шаблон вывода логотипа в верхней части сайта мобильная версия
======
[[if? &is=`[*id*]:!=:1` &then=`<a href="/"><img class="svg" src="[+col0+]" alt="Логотип компании"/></a>`
	&else=`<img class="svg" src="[+col0+]" alt="Логотип компании"/>`]]