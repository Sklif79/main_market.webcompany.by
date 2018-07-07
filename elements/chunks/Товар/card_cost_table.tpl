name:card_cost_table
description:Таблица с ценами и кнопками купить и заказать в карточке товара
======
<div class="cost-table-wrap card-page">
	<h4>Цены</h4>
	<div class="cost-table-scroll">
		<div class="cost-table">
			<div class="cost-table__th-wrap">
				<div class="cost-table__th">Названия</div>
				<div class="cost-table__th">Цена, руб</div>
				<div class="cost-table__th">В наличии</div>
				<div class="cost-table__th"></div>
			</div>

			<div class="cost-table__row">
				<div class="cost-table__title">
					<a href="#">
						<span>Дверь алюминевая с стеклянными «Летний бриз»</span>
					</a>
				</div>
				<div class="cost-table__price">
					<div class="cost-table__price-old">
						1 000.50
					</div>
					<div class="cost-table__price-actual">
						2 000.50
					</div>
					<div class="cost-table__price-saving">
						Экономия
						<div class="cost-table__price-saving-sum">
							543.00 руб.
						</div>
					</div>
				</div>
				<div class="cost-table__status reservation">
					Под заказ
				</div>
				<div class="cost-table__buy-wrap">
					<form class="count-form" method="post" action="[~[*id*]~]" data-trigger="spinner">
						<input type="hidden" name="shk-id" value="[*id*]__price2" />
						<input type="hidden" name="shk-name" value="[*pagetitle*]" />
						<input type="hidden" name="shk-price" value="543.00" />
						<input type="hidden" name="shk-image" value="[*img_prew_prod*]" />
						<div class="count-block">
							<button type="button" class="count__form-btn" data-spin="down"></button>
							<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
							<button type="button" class="count__form-btn" data-spin="up"></button>
						</div>
						<input type="submit" class="buy-btn" value="В корзину">
					</form>

					<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one">Купить в 1 клик</a>
					<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one order">Заказать</a>
				</div>
			</div>

			<div class="cost-table__row">
				<div class="cost-table__title">
					<a href="#">
						<span>Дверь алюминевая с стеклянными «Летний бриз»</span>
					</a>
				</div>
				<div class="cost-table__price">
					<div class="cost-table__price-actual">
						2 000.50
					</div>
				</div>
				<div class="cost-table__status in-stock">
					В наличии
				</div>
				<div class="cost-table__buy-wrap">
					<form class="count-form" method="post" action="[~[*id*]~]" data-trigger="spinner">
						<input type="hidden" name="shk-id" value="[*id*]" />
						<input type="hidden" name="shk-name" value="[*pagetitle*]" />
						<input type="hidden" name="shk-price" value="[*new_price*]" />
						<input type="hidden" name="shk-image" value="[*img_prew_prod*]" />
						<div class="count-block">
							<button type="button" class="count__form-btn" data-spin="down"></button>
							<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
							<button type="button" class="count__form-btn" data-spin="up"></button>
						</div>
						<input type="submit" class="buy-btn" value="В корзину">
					</form>

					<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one">Купить в 1 клик</a>
					<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one order">Заказать</a>
				</div>
			</div>

			<div class="cost-table__row">
				<div class="cost-table__title">
					<a href="#">
						<span>Дверь алюминевая с стеклянными «Летний бриз»</span>
					</a>
				</div>
				<div class="cost-table__price">
					<div class="cost-table__price-actual">
						2 000.50
					</div>
				</div>
				<div class="cost-table__status in-stock">
					В наличии
				</div>
				<!-- для купленного товара добавить класс .purchase (пока что не реализовывал) -->
				<div class="cost-table__buy-wrap purchase">
					<form class="count-form" method="post" action="[~[*id*]~]" data-trigger="spinner">
						<input type="hidden" name="shk-id" value="[*id*]" />
						<input type="hidden" name="shk-name" value="[*pagetitle*]" />
						<input type="hidden" name="shk-price" value="[*new_price*]" />
						<input type="hidden" name="shk-image" value="[*img_prew_prod*]" />
						<div class="count-block">
							<button type="button" class="count__form-btn" data-spin="down"></button>
							<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
							<button type="button" class="count__form-btn" data-spin="up"></button>
						</div>
						<input type="submit" class="buy-btn" value="В корзине">
					</form>

					<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one">Купить в 1 клик</a>
					<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one order">Заказать</a>
				</div>
			</div>

			<div class="cost-table__row">
				<div class="cost-table__title">
					<a href="#">
						<span>Дверь алюминевая с стеклянными «Летний бриз»</span>
					</a>
				</div>
				<div class="cost-table__price">
					<div class="cost-table__price-actual">
						2 000.50
					</div>
				</div>
				<div class="cost-table__status not-available">
					Нет в наличии
				</div>
				<!-- для отсутствующего товара добавить класс .order -->
				<div class="cost-table__buy-wrap order">
					<form class="count-form" method="post" action="[~[*id*]~]" data-trigger="spinner">
						<input type="hidden" name="shk-id" value="[*id*]" />
						<input type="hidden" name="shk-name" value="[*pagetitle*]" />
						<input type="hidden" name="shk-price" value="[*new_price*]" />
						<input type="hidden" name="shk-image" value="[*img_prew_prod*]" />
						<div class="count-block">
							<button type="button" class="count__form-btn" data-spin="down"></button>
							<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
							<button type="button" class="count__form-btn" data-spin="up"></button>
						</div>
						<input type="submit" class="buy-btn" value="В корзину">
					</form>

					<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one">Купить в 1 клик</a>
					<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one order">Заказать</a>
				</div>
			</div>

		</div>

	</div>
</div>

<div class="cost-table-mobile">
	<div class="cost-table-el">
		<div class="cost-table__title">
			<a href="">
				<span>Дверь алюминевая с стеклянными «Летний бриз»</span></a>
		</div>

		<div class="cost-table__row">
			<span>Цена, руб</span>

			<div class="cost-table__price-wrap">
				<div class="cost-table__price">
					<span class="cost-table__price-old">2 000.50</span>
					<span class="cost-table__price-actual">2 000.50</span>
				</div>
				<div class="cost-table__economy">
					Экономия <span>543.00 руб.</span>
				</div>
			</div>
		</div>

		<div class="cost-table__row">
			<span>В наличии</span>
			<span class="cost-table__status in-stock">В наличии</span>
		</div>

		<div class="cost-table__row">
			<div class="cost-table__buy-wrap">
				<form class="count-form" method="post" action="[~[*id*]~]" data-trigger="spinner">
					<input type="hidden" name="shk-id" value="[*id*]" />
					<input type="hidden" name="shk-name" value="[*pagetitle*]" />
					<input type="hidden" name="shk-price" value="[*new_price*]" />
					<input type="hidden" name="shk-image" value="[*img_prew_prod*]" />
					<div class="count-block">
						<button type="button" class="count__form-btn" data-spin="down"></button>
						<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
						<button type="button" class="count__form-btn" data-spin="up"></button>
					</div>
					<input type="submit" class="buy-btn" value="В корзину">
					<input type="submit" class="buy-btn buyed-btn" value="В корзине">
				</form>

				<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one">Купить в 1 клик</a>
				<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one order">Заказать</a>
			</div>

		</div>
	</div>

	<!-- --@ чтобы появилась кнопка заказать, добавить класс ordered @-- -->
	<div class="cost-table-el ordered">
		<div class="cost-table__title">
			<a href="">
				<span>Дверь алюминевая с стеклянными «Летний бриз»</span></a>
		</div>

		<div class="cost-table__row">
			<span>Цена, руб</span>

			<div class="cost-table__price-wrap">
				<div class="cost-table__price">
					<span class="cost-table__price-old">2 000.50</span>
					<span class="cost-table__price-actual">2 000.50</span>
				</div>
				<div class="cost-table__economy">
					Экономия <span>543.00 руб.</span>
				</div>
			</div>
		</div>

		<div class="cost-table__row">
			<span>В наличии</span>
			<span class="cost-table__status reservation">Под заказ</span>
		</div>

		<div class="cost-table__row">
			<div class="cost-table__buy-wrap">
				<form class="count-form" method="post" action="[~[*id*]~]" data-trigger="spinner">
					<input type="hidden" name="shk-id" value="[*id*]" />
					<input type="hidden" name="shk-name" value="[*pagetitle*]" />
					<input type="hidden" name="shk-price" value="[*new_price*]" />
					<input type="hidden" name="shk-image" value="[*img_prew_prod*]" />
					<div class="count-block">
						<button type="button" class="count__form-btn" data-spin="down"></button>
						<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
						<button type="button" class="count__form-btn" data-spin="up"></button>
					</div>
					<input type="submit" class="buy-btn" value="В корзину">
					<input type="submit" class="buy-btn buyed-btn" value="В корзине">
				</form>

				<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one">Купить в 1 клик</a>
				<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one order">Заказать</a>
			</div>

		</div>
	</div>

	<!-- --@ для заказанного товара добавить класс buyed @-- -->
	<div class="cost-table-el buyed">
		<div class="cost-table__title">
			<a href="">
				<span>Дверь алюминевая с стеклянными «Летний бриз»</span></a>
		</div>

		<div class="cost-table__row">
			<span>Цена, руб</span>

			<div class="cost-table__price-wrap">
				<div class="cost-table__price">
					<span class="cost-table__price-old">2 000.50</span>
					<span class="cost-table__price-actual">2 000.50</span>
				</div>
				<div class="cost-table__economy">
					Экономия <span>543.00 руб.</span>
				</div>
			</div>
		</div>

		<div class="cost-table__row">
			<span>В наличии</span>
			<span class="cost-table__status not-available">Нет в наличии</span>
		</div>

		<div class="cost-table__row">
			<div class="cost-table__buy-wrap">
				<form class="count-form" method="post" action="[~[*id*]~]" data-trigger="spinner">
					<input type="hidden" name="shk-id" value="[*id*]" />
					<input type="hidden" name="shk-name" value="[*pagetitle*]" />
					<input type="hidden" name="shk-price" value="[*new_price*]" />
					<input type="hidden" name="shk-image" value="[*img_prew_prod*]" />
					<div class="count-block">
						<button type="button" class="count__form-btn" data-spin="down"></button>
						<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
						<button type="button" class="count__form-btn" data-spin="up"></button>
					</div>
					<input type="submit" class="buy-btn" value="В корзину">
					<input type="submit" class="buy-btn buyed-btn" value="В корзине">
				</form>

				<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one">Купить в 1 клик</a>
				<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one order">Заказать</a>
			</div>

		</div>
	</div>

</div>