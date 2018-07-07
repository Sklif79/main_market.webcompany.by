name:dialers_contacts_info_tpl
description:Шаблон вывода информации о диллере
======
<div class="contact-dealers-region-el">
	<div class="contact-dealers-region__img">
		<img src="[[phpthumb? &input='[+col0+]' &options='w=178,h=120,f=png,q=95,zc=C,bg=ffffff']]" alt="[+col1+]">
	</div>
	<div class="contact-dealers-region__title">
		[+col1+]
	</div>
	<div class="contact-dealers-region__address">
		<span>
			<span>[+col2+] </span>
		</span>
	</div>
	<div class="contact-dealers-region__phone">
		[+col3+] 
	</div>
	<div class="contact-dealers-region__schedule">
		[+col4+]
	</div>
</div>