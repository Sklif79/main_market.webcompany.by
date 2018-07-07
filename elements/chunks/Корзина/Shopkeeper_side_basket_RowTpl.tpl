name:Shopkeeper_side_basket_RowTpl
description:Шаблон вывода элементов плавающей корзины
======
<tr>
	<td>
		<a href="[+link+]" class="side-basket__img">
			<img src="[+product_prev+]" alt="[+name+]">
		</a>
	</td>
	<td>
		<a href="[+link+]" class="side-basket__lnk">[+name+]</a>
	</td>
	<td>
		<div class="side-basket__price">[+price+]</div>
	</td>
	<td class="kolvo">
		<div class="kolvo-wrap">
			<a href="#" class="btn_plus_minus minus"></a><input class="shk-count" title="изменить количество" name="count[]" type="text" maxlength="3"  value="[+count+]"><a href="#" class="btn_plus_minus plus"></a>
		</div>
	</td>
	<td>
		<div class="side-basket__total-price">
			[+price_count+]
		</div>
	</td>
	<td>
		<div class="side-basket__close" session_id="[+index+]">
			<a href="[+url_del_item+]" title="Удалить" class="shk-del">
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