name:side_basket_form_report_row_tpl
description:Шаблон вывода строк быстрого заказа
======
<tr>
	<td>
		<a href="[+url+]">
			<img src="[+prew_img+]" alt="[+name+]">
		</a>
	</td>
	<td>
		<a href="[+url+]">[+name+]</a>
	</td>
	<td>
		[+price_format+]
	</td>
	<td>
		[+count+]	
	</td>
	<td>
		<div class="side-basket__total-price">
			[+price_count_format+]
		</div>
	</td>
</tr>