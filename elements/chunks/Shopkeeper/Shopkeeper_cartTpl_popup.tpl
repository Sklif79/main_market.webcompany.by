name:Shopkeeper_cartTpl_popup
description:шаблон корзины для версии с выпадающим элементом
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
<div class="basket-under-header">
	<div class="container">
		<div class="scroll-floating-basket">
			<div class="scroll-floating-basket-table">
				<div class="scroll-floating-basket-items">
					[+inner+]
				</div>
				<div class="scroll-floating-basket-total">
					<span>Общая сумма:</span>
					<span>[+price_total+] руб.</span>
				</div>
			</div>

			<div class="text_center">
				<a href="[+order_page_url+]" class="scroll-floating-basket__lnk">Перейти в корзину</a>
			</div>
		</div>
	</div>
	[+plugin+]
</div>
<!--tpl_separator-->
<div id="shopCart" class="basket-under-header shop-cart">
	<div class="container">
		<div class="scroll-floating-basket">
			<div class="scroll-floating-basket-table">
				<div class="scroll-floating-basket-items">
					[+inner+]
				</div>
				<div class="scroll-floating-basket-total">
					<span>Общая сумма:</span>
					<span>[+price_total+] руб.</span>
				</div>
			</div>

			<div class="text_center">
				<a href="[+order_page_url+]" class="scroll-floating-basket__lnk">Перейти в корзину</a>
			</div>
		</div>
	</div>
	[+plugin+]
</div>