name:header_phones_hidden_block_tpl
description:шаблон вывода телефонов в выпадающем верхнем блоке 
======
<div class="header-phones__el">
	<div class="header-phones__img">
		<img src="[+col0+]" alt="[+col2+]">
	</div>
	<a class="header-phones__phone" href="tel:[[phone_clear? &phone_in=`[+col1+]`]]">[+col1+] <span>[+col2+]</span></a>
</div>