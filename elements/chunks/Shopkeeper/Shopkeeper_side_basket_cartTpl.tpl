name:Shopkeeper_side_basket_cartTpl
description:шаблон боковой плавающей корзины
======
<div id="shopCart" class="side-basket enabled empty">
	<div class="side-basket__label" data-href="/basket.html">
		<div class="side-basket__count">0</div>
	</div>
	<div class="side-basket__empty">
		<div class="side-basket__title">Корзина пуста</div>
		<p>Перейдите в каталог и закажите интересующий вас товар!</p>
		<a href="[~53~]" class="side-basket__go-to-basket">Перейти в каталог</a>
	</div>
	[+plugin+]
</div>
<!--tpl_separator-->
<div id="shopCart" class="side-basket enabled">
	<div class="side-basket__label" data-href="/basket.html">
		<div class="side-basket__count">[+total_items+]</div>
	</div>
	<div class="side-basket__table-wrap">
		<div class="side-basket__title-wrap">
			<div class="side-basket__title">Корзина</div>
			<a href="[+empty_url+]" id="butEmptyCart" class="side-basket__clear">
				<svg width="10" height="10" viewBox="0 0 10 10" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
					<g id="Canvas" transform="translate(-3417 132)">
						<g id="Vector">
							<use xlink:href="#path0_stroke" transform="translate(3418 -131)" fill="currentColor" />
						</g>
					</g>
					<defs>
						<path id="path0_stroke" d="M -0.353553 0.353553L 3.64645 4.35355L 4.35355 3.64645L 0.353553 -0.353553L -0.353553 0.353553ZM 3.64645 4.35355L 7.64645 8.35355L 8.35355 7.64645L 4.35355 3.64645L 3.64645 4.35355ZM 4.35355 4.35355L 8.35355 0.353553L 7.64645 -0.353553L 3.64645 3.64645L 4.35355 4.35355ZM 7.64645 -0.353553L -0.353553 7.64645L 0.353553 8.35355L 8.35355 0.353553L 7.64645 -0.353553Z" />
					</defs>
				</svg>
				Очистить корзину
			</a>
		</div>
		<table class="side-basket__table">
			<thead>
				<tr>
					<th></th>
					<th>Название</th>
					<th>Цена</th>
					<th>Кол-во</th>
					<th>Итого</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				[+inner+]
			</tbody>
		</table>
		<div class="side-basket-buttons">
			<a href="[~53~]" class="side-basket__continue">Продолжить покупки</a>
			<a href="[+order_page_url+]" class="side-basket__go-to-basket">Перейти в корзину</a>
			<a href="#fast_buy_side_basket" data-uk-modal="" class="side-basket__fast-order">Быстрый заказ</a>
		</div>
	</div>

	
	<div class="side-basket__empty">
		<div class="side-basket__title">Корзина пуста</div>
		<p>Перейдите в каталог и закажите интересующий вас товар!</p>
		<a href="[~53~]" class="side-basket__go-to-basket">Перейти в каталог</a>
	</div>

</div>
<!--tpl_separator-->
<div class="side-basket enabled">
	<div class="side-basket__label" data-href="/basket.html">
		<div class="side-basket__count">[+total_items+]</div>
		<a href='[+order_page_url+]' id="butOrder">&nbsp;</a>
	</div>
	[+plugin+]
</div>