name:employees_tpl
description:Шаблон для вывода сотрудника в блоке наши сотрудники
======
<div>
	<div class="wrap"><div class="img"><img src="[[phpthumb? &input=`[+col0+]` &options=`w=140,h=140,f=png,q=95,far=C,bg=ffffff`]]" alt="[+col1+] [+co2+]"/></div>
		<p class="work">[+col1+]</p>
		<p class="name">[+col2+]</p>
		<p class="tel">[+col3+]</p>
		<p class="email">[+col4+]</p></div>
</div>