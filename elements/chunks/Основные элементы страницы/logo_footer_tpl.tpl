name:logo_footer_tpl
description:Логотип компании в нижней части сайта
======
<div class="logo">
	[[if? &is=`[*id*]:!=:1` &then=`<a href="/"><img class="svg" id="footer-logo" src="[+col1+]" alt="Логотип компании"/></a>`
	&else=`<img class="svg" id="footer-logo" src="[+col1+]" alt="Логотип компании"/>`]]
</div>