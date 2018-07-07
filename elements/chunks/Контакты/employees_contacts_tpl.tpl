name:employees_contacts_tpl
description:шаблон вывода сотрудника на странице контакты
======
<div class="element">
	<div class="uk-grid uk-grid-small">
		<div class="uk-width-1-3"><img class="uk-border-circle" src="[[phpthumb? &input=`[+col0+]` &options=`w=76,h=76,f=png,q=95,far=C,bg=ffffff`]]" alt="[+col1+] [+co2+]"/></div>
		<div class="content uk-width-2-3">
			<p class="title">
				[+col2+]
			</p>
			<p>[+col1+]</p>
			<p class="phone">[+col3+]</p>
			<p class="email">[+col4+]</p>
		</div>
	</div>
</div>