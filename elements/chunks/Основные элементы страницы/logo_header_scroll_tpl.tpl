name:logo_header_scroll_tpl
description:Шаблон вывода логотипа в скроллменю
======
<div class="logo [*id:is=`1`:then=`logo_scroll_toup`*]">[[if? &is=`[*id*]:!=:1` &then=`<a href="/">
	
	<img class="svg" id="scroll-logo" src="[+col0+]" alt="Логотип компании"/>
	
	</a>`
	
	&else=`
	
	<img class="svg" id="scroll-logo" src="[+col0+]" alt="Логотип компании"/>
	
	`]]</div>