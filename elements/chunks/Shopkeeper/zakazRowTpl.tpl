name:zakazRowTpl
description:Вывод плашки товара в корзине
======
<tr>
	<td class="image"><a href="[+link+]"><img src="[+product_prev+]" style="width: 56px; height: auto;" alt=""></a></td>
	<td class="name"><a href="[+link+]">[+name+]</a></td>
	<td class="factoring">[+brand_name+]</td>
	<td class="articul">[+articul+]</td>
	[[if? &is=`[+sale_persent+]:empty` &then=`<td class="sale">Нет</td>` &else=`<td class="sale">[+sale_persent+]%</td>`]]
	<td class="price">
		<div class="old-price">
			[+old_price+]
		</div>
		[+price+]
	</td>
	<td class="kolvo">
		<div class="kolvo-wrap">
			<a href="#" class="btn_plus_minus minus"></a><input class="shk-count" title="изменить количество" name="count[]" type="text" maxlength="3"  value="[+count+]"><a href="#" class="btn_plus_minus plus"></a>
		</div>
	</td>
	<td class="summa">
		<div class="total-wrap">
			<span>[+price_count+]</span><a href="[+url_del_item+]" title="Удалить" class="shk-del">
				<svg width="9" height="9" viewBox="0 0 9 9" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<g id="Canvas__clear-basket-row" transform="translate(-356 527)">
<g id="Vector__clear-basket-row">
<use xlink:href="#path0__clear-basket-row" transform="translate(356.736 -526)"/>
</g>
</g>
<defs>
<path id="path0__clear-basket-row" d="M -0.353553 0.353553L 3.14645 3.85355L 3.85355 3.14645L 0.353553 -0.353553L -0.353553 0.353553ZM 3.14645 3.85355L 6.64645 7.35355L 7.35355 6.64645L 3.85355 3.14645L 3.14645 3.85355ZM 3.85355 3.85355L 7.35355 0.353553L 6.64645 -0.353553L 3.14645 3.14645L 3.85355 3.85355ZM 6.64645 -0.353553L -0.353553 6.64645L 0.353553 7.35355L 7.35355 0.353553L 6.64645 -0.353553Z"/>
</defs>
</svg>
			</a>
		</div>
	</td>
</tr>