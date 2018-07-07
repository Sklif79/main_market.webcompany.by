name:card_characteristics_tpl
description:Шаблон вывода характеристики товара
======
<tr>
	<td>
		[+col0+]
		[[if? &is='[+col2+]~~empty' &separator='~~' &then='' else='
		<div class="tooltip-wrap">
			<img src="assets/templates/market/img/update/question-table.svg" alt="">
			<div class="tooltip-content">
				[+col2+]
			</div>
		</div>
		']]
	</td>
	<td>
		[[characteristics_no_yes? &inval=`[+col1+]`]]
	</td>
</tr>