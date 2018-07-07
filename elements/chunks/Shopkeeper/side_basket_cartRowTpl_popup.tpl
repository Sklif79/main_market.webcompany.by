name:side_basket_cartRowTpl_popup
description:Шаблон вывода строк плавающей корзины
======
<tr>
	<td>
		<a href="[+url+]" class="side-basket__img">
			<img src="[+prew_img+]" alt="[+name+]">
		</a>
	</td>
	<td>
		<a href="[+url+]" class="side-basket__lnk">[+name+]</a>
	</td>
	<td>
		<div class="side-basket__price">[+price_format+]</div>
	</td>
	<td>

		<form class="count-form" method="post" action="[~[+id+]~]" data-trigger="spinner">
			<div class="count-block">
				<button type="button" class="count__form-btn" data-spin="down"></button>
				<input type="text" name="shk-count" class="count__form-el count__form-val" value="[+count+]" data-rule="quantity">
				<button type="button" class="count__form-btn" data-spin="up"></button>
			</div>
			<input type="submit" class="side-basket__submit" value="">				
		</form>

	</td>
	<td>
		<div class="side-basket__total-price">
			[+price_count_format+]
		</div>
	</td>
	<td>
		<div class="side-basket__close" session_id="[+session_id+]">
			<svg width="9" height="9" viewBox="0 0 9 9" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
<g id="Canvas__side-basket-row" transform="translate(-356 527)">
<g id="Vector__side-basket-row">
<use xlink:href="#path0__side-basket-row" transform="translate(356.736 -526)"></use>
</g>
</g>
<defs>
<path id="path0__side-basket-row" d="M -0.353553 0.353553L 3.14645 3.85355L 3.85355 3.14645L 0.353553 -0.353553L -0.353553 0.353553ZM 3.14645 3.85355L 6.64645 7.35355L 7.35355 6.64645L 3.85355 3.14645L 3.14645 3.85355ZM 3.85355 3.85355L 7.35355 0.353553L 6.64645 -0.353553L 3.14645 3.14645L 3.85355 3.85355ZM 6.64645 -0.353553L -0.353553 6.64645L 0.353553 7.35355L 7.35355 0.353553L 6.64645 -0.353553Z"></path>
</defs>
</svg>
		</div>
	</td>
</tr>