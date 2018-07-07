name:Shopkeeper_cartRowTpl_popup
description:шаблон товаров в корзине для версии с выпадающим элементом
======
<!--  -->
<div class="scroll-floating-basket-item">
	<div class="scroll-floating-basket__img">
		<img src="[+product_prev+]" alt="">
	</div>
	<div class="scroll-floating-basket-info-wrap">
		<div class="scroll-floating-basket__close"><a href="[+url_del_item+]" title="Удалить" class="shk-del"></a></div>
		<div class="scroll-floating-basket__title">
			<a href="[+link+]">[+name+]</a>
		</div>
		<div class="scroll-floating-basket-price-wrap">
			<div class="scroll-floating-basket__price-count">
				<span>[+price+] руб.</span> / <span>[+count+] шт.</span>
			</div>
			<div class="scroll-floating-basket__total-price">
				[+price_count+] руб.
			</div>
		</div>
	</div>
</div>