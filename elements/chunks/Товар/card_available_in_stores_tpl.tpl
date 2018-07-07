name:card_available_in_stores_tpl
description:Шаблон вывода элемента наличие в магазине
======
<div class="available-in-stores-row">
	<div class="available-in-stores__address">
		[+col0+]
	</div>
	<div class="available-in-stores__status [+col1+]">
		[[availability_text? &avail_class=`[+col1+]`]]
	</div>
</div>