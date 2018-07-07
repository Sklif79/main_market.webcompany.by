name:side_basket_outer_tpl
description:Шаблон вывода контейнера плавающей корзины
======
<!--@- боковая корзина, добавить enabled для включения и empty если пустая -@-->
<div class="side-basket enabled [+basket_class+]">
	<div class="side-basket__label"  data-href="/basket.html">
		<div class="side-basket__count"></div>
	</div>
	<div class="side-basket__table-wrap">
		<div class="side-basket__title-wrap">
			<div class="side-basket__title">Корзина</div>
			<div class="side-basket__clear">
				<a href="http://market.webcompany.by/basket.html?shk_action=empty" id="butEmptyCart">
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
				[+basket_products+]
			</tbody>
		</table>
		<div class="side-basket-buttons">
			<a href="" class="side-basket__continue">Продолжить покупки</a>
			<a href="[+basket_url+]" class="side-basket__go-to-basket">Перейти в корзину</a>
			<a href="" class="side-basket__fast-order">Быстрый заказ</a>
		</div>
	</div>

	<!--@- контейнер пустой корзины -@-->
	<div class="side-basket__empty">
		<div class="side-basket__title">Корзина пуста</div>
		<p>Перейдите в каталог и закажите интересующий вас товар!</p>
		<a href="[+catalog_url+]" class="side-basket__go-to-basket">Перейти в каталог</a>
	</div>
	<!--@- /боковая корзина -@-->
</div>