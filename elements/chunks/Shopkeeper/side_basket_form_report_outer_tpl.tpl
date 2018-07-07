name:side_basket_form_report_outer_tpl
description:Шаблон вывода контейнера для результатов быстрого заказа
======
<div>
	<table>
		<thead>
			<tr>
				<th>Изображение</th>
				<th>Название</th>
				<th>Цена</th>
				<th>Кол-во</th>
				<th>Итого</th>
			</tr>
		</thead>
		<tbody>
			[+basket_products+]
		</tbody>
	</table>
	Общая стоимость: [+price_total_format+]
</div>