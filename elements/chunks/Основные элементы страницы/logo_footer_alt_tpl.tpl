name:logo_footer_alt_tpl
description:Логотип компании в нижней части сайта для малого подвала
======
<div class="footer-logo">
	[[if? &is=`[*id*]:!=:1` &then=`<a href="/"><img class="svg" id="footer-logo" src="[+col1+]" alt="Логотип компании"/></a>`
	&else=`<img class="svg" id="footer-logo" src="[+col1+]" alt="Логотип компании"/>`]]
</div>