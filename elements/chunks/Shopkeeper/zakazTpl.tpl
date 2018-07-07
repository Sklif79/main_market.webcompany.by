name:zakazTpl
description:Отображение расширенной корзины товара
======
<div id="shopCart" class="shop-cart">
	<div class="shop-cart-head"><b>Корзина</b></div>
	<div id="cartInner" class="empty">
		<div id="cartEmpty" style="text-align:center;">Пусто</div>
	</div>
	[+plugin+]
</div>
<!--tpl_separator-->
<div id="shopCart">
	<!--<div class="products_list_lbl">Список товаров</div>-->
	<form action="[+this_page_url+]#shopCart" method="post">
		<fieldset>
			<table class="products_list">
				<tr class="header">
					<td></td>
					<td>Название</td>
					<td>Производитель</td>
					<td>Артикул</td>
					<td>Cкидка</td>
					<td>Цена (руб.)</td>
					<td>Количество</td>
					<td>Сумма (руб.)</td>
				</tr>
				[+inner+]
				<tr class="total">
					<td colspan="8">
						<span class="total__wrap"><span class="total-title">Итого: </span><span class="orange">[+price_total+]</span> [+currency+]</span>
						<div style="float: right;">
							<a href="[+empty_url+]" id="butEmptyCart">

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

								Очистить корзину</a>
						</div>
					</td>
				</tr>
			</table>
			<noscript>
				<fieldset><input type="submit" name="shk_recount" value="Пересчитать" /></fieldset>
			</noscript>
			<div class="cart-order">
				<a href="[+order_page_url+]" id="butOrder">Оформить заказ</a>
			</div>
		</fieldset>
	</form>
	[+plugin+]
</div>
<!--tpl_separator-->
<div id="shopCart" class="shop-cart">
	<div class="shop-cart-head"><b>Корзина</b></div>
	<div id="cartInner" class="full">
		<div  style="text-align:right;">
			<a href="[+empty_url+]" id="butEmptyCart">Очистить корзину</a>
		</div>
		<div class="shop-cart-body">Выбрано: <b>[+total_items+]</b> [+plural+]</div>
		<div  style="text-align:right;">Общая сумма: <b>[+price_total+]</b> [+currency+]
		</div>
		<div class="cart-order">
			<a href="[+order_page_url+]" id="butOrder">Оформить заказ</a>
		</div>
	</div>
	[+plugin+]
</div>