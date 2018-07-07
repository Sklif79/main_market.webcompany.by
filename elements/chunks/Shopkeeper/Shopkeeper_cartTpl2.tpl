name:Shopkeeper_cartTpl2
description:шаблон корзины вариант 2
======
<div class="cart" id="shopCart">
	<div class='header-basket inside empty' id="cartInner">
		<div id="cartEmpty" class="header-basket__count">
			0
		</div>
	</div>
	[+plugin+]
</div>
<!--tpl_separator-->
<div id="shopCart" class="shop-cart">
	<div class="shop-cart-head"><a name="shopCart"></a><b>Корзина</b></div>
	<div id="cartInner" class="full">
		<form action="[+this_page_url+]#shopCart" method="post">
			<fieldset>
				<div  style="text-align:right;">
					<a href="[+empty_url+]" id="butEmptyCart">Очистить корзину</a>
				</div>
				<table width="100%">
					<tbody>
						[+inner+]
					</tbody>
				</table>
				<div  style="text-align:right;">Общая сумма: <b>[+price_total+]</b> [+currency+]</div>
				<noscript>
					<fieldset><input type="submit" name="shk_recount" value="Пересчитать" /></fieldset>
				</noscript>
				<div class="cart-order">
					<a href="[+order_page_url+]" id="butOrder">Оформить заказ</a>
				</div>
			</fieldset>
		</form>
	</div>
	[+plugin+]
</div>
<!--tpl_separator-->
<div class="cart" id="shopCart">
	<div class='header-basket inside full' id="cartInner">
		<div class="header-basket__count">
			[+total_items+]
		</div>
		<a href='[+order_page_url+]' id="butOrder">&nbsp;</a>
		<div class="basket-total-price">
			<div class="basket-total-price__title">Корзина</div>
			<div class="basket-total-price__cost">[+price_total+] &#8381;</div>
		</div>
	</div>
	[+plugin+]
</div>