name:basket_under_header_tpl
description:Шаблон вывода контейнера меню, появляющегося при попапе
======
<div class="container">
	<div class="scroll-floating-basket">
		<div class="scroll-floating-basket-table">
			<div class="scroll-floating-basket-items">
				[+basket_products+]
			</div>
			<div class="scroll-floating-basket-total">
				<span>Общая сумма:</span>
				<span>[+price_total_format+] руб.</span>
			</div>
		</div>

		<div class="text_center">
			<a href="[+basket_url+]" class="scroll-floating-basket__lnk">Перейти в корзину</a>
		</div>
	</div>
</div>