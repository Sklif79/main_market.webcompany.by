name:purchases_cartRowTpl_popup
description:Шаблон вывода строк выпадающей корзины
======
<!--  -->
<div class="scroll-floating-basket-item">
	<div class="scroll-floating-basket__img">
		<img src="[+prew_img+]" alt="[+name+]">
	</div>
	<div class="scroll-floating-basket-info-wrap">
		<div class="scroll-floating-basket__close" session_id="[+session_id+]">
			<svg width="9" height="9" viewBox="0 0 9 9" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
				<g id="Canvas__clear-scroll-basket-row" transform="translate(-356 527)">
					<g id="Vector__clear-scroll-basket-row">
						<use xlink:href="#path0__clear-scroll-basket-row" transform="translate(356.736 -526)"/>
					</g>
				</g>
				<defs>
					<path id="path0__clear-scroll-basket-row" d="M -0.353553 0.353553L 3.14645 3.85355L 3.85355 3.14645L 0.353553 -0.353553L -0.353553 0.353553ZM 3.14645 3.85355L 6.64645 7.35355L 7.35355 6.64645L 3.85355 3.14645L 3.14645 3.85355ZM 3.85355 3.85355L 7.35355 0.353553L 6.64645 -0.353553L 3.14645 3.14645L 3.85355 3.85355ZM 6.64645 -0.353553L -0.353553 6.64645L 0.353553 7.35355L 7.35355 0.353553L 6.64645 -0.353553Z"/>
				</defs>
			</svg>
		</div>
		<div class="scroll-floating-basket__title">
			<a href="[+url+]">[+name+]</a>
		</div>
		<div class="scroll-floating-basket-price-wrap">
			<div class="scroll-floating-basket__price-count">
				<span>[+price_format+] руб.</span> / <span>[+count+] шт.</span>
			</div>
			<div class="scroll-floating-basket__total-price">
				[+price_count_format+] руб.
			</div>
		</div>
	</div>
</div>