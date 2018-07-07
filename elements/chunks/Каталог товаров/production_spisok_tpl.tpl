name:production_spisok_tpl
description:Шаблон вывода элементов превью товаров в виде списка
======
<div class="element [+order+]">
	<div class="catalog-spisok-img">
		<a href="[+url+]">
			<img src="[[phpthumb? &input=`[+product_prev+]` &options=`w=186,h=186,f=png,q=95,far=C,bg=ffffff`]]" alt="[+pagetitle+]"/>

			<div class="product-icons">					
				[[if? &is=`[+novelty+]:=:1` &then=`<div class="new" data-uk-tooltip="{pos:'left'}" title="Новинки">new</div>`]]
				[[if? &is=`[+sale+]:=:1` &then=`<div class="sale" data-uk-tooltip="{pos:'left'}" title="Распродажа">-[+sale_persent+]%</div>`]]
				[[if? &is=`[+bestseller+]:=:1` &then=`<div class="hit" data-uk-tooltip="{pos:'left'}" title="Хит">Хит</div>`]]
			</div>
		</a>
	</div>

	<div class="catalog-spisok-info">
		<div class="title"><a href="[+url+]">[+pagetitle+]</a></div>

		<div class="catalog-spisok-article-cat-wrap">			
			<div class="link-category"><a href="[~[+parent+]~]"><span>[[GetPageParams? &iddoc=`[+parent+]` &field=`pagetitle`]]</span></a></div>
			<div class="article">Артикул: <span>[+articul+]</span></div>
		</div>

		<div class="text">
			[+introtext+]
		</div>

		[[visible_chunk? 
		&id_param_val=`99`
		&chunk_name=`@CODE: 
		<div class="availability">
			[[disp_icon_capt_text_prew? &iddoc=`[+id+]`]]
		</div>` 
		&tv_visible_name=`availability_product_visible` 
		&session_param_name=`availability_product_visible`
		&chunk_placeholders=``
		]]
	</div>

	<div class="catalog-spisok-buy">
		<div class="price">
			[[if? &is=`[+old_price+]:empty` &then=`` &else=`
			<span class="price-old-wrap">
				<span class="price_old_rub_val">[[format_pr? &format_pr=`[+old_price+]`]]</span>
				<span class="price_old_rub"> руб.</span>	
			</span>
			`]]
			<p>[[format_pr? &format_pr=`[+new_price+]`]] <span class="price_rub"> руб.</span></p>	
		</div>

		<div class="buy-block shk-item [[in_basket? &iddoc=`[+id+]` &in_basket_class=`in-basket`]]">
			<form class="count-form" method="post" action="[~[+id+]~]" data-trigger="spinner">
				<input type="hidden" name="shk-id" value="[+id+]" />
				<input type="hidden" name="shk-name" value="[+pagetitle+]" />
				<input type="hidden" name="shk-price" value="[+new_price+]" />
				<input type="hidden" name="shk-image" value="[+img_prew_prod+]" />
				<div class="count-block">
					<button type="button" class="count__form-btn" data-spin="down"></button>
					<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
					<button type="button" class="count__form-btn" data-spin="up"></button>
				</div>
				<input type="submit" class="buy-btn" value="В корзину">				
			</form>
			<div class="in-basket-btn">
				<a href="[~140~]">
					<svg width="13" height="10" viewBox="0 0 13 10" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
						<g id="Canvas__checked-in-basket">
							<path id="Vector__checked-in-basket" d="M 0 2.8L 4.125 7L 11 0" transform="translate(1 1)" stroke-width="2" />
						</g>
					</svg>
					В корзине
				</a>
			</div>
		</div>

		<a href="#product" data-product="[+pagetitle+]" data-uk-modal class="order-btn buy-btn">
			Заказать
		</a>

	</div>
</div>