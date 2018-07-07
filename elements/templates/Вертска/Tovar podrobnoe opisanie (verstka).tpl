name:Товар подробное описание (верстка)
description:Product inside new
======
<!DOCTYPE html>
<html lang="ru">

	<head>
		{{head}}
	</head>

	<body>
		<header class="header [+noshadow_class+]">
			{{header}}
		</header>

		<!-- --@ корзина по ховеру под корзиной в header @-- -->
		{{basket_under_header}} [[breadcrumbs_select_load]]

		<div class="container second-page">
			<div class="uk-grid">
				{{left_bar_catalog}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]


					<div class="main-first-product-block">

						{{prod_ins_slider_gallery_new}}

						<div class="main-first-info-wrap">
							<div class="main-first-info-header">
								<div class="main-first-info__articul">
									Артикул: <span>[*articul*]</span>
								</div>
								<div class="main-first-info__rating">
									[!star_rating? &id=`[*id*]`  &tpl=`@CHUNK:star_rating_tpl` !]
								</div>

								<div class="main-first-info__brand">
									<a href="">
										<img src="assets/templates/market/img/update/electrolux.png" alt="">
									</a>
								</div>

							</div>
							<div class="main-first-info-presence-wrap">
								<div class="main-first-info__print">
									<span>Печать</span>
								</div>

								<!-- при отсутствии товара к классу main-first-info-presence-wrap-inner добавить order -->
								<div class="main-first-info-presence-wrap-inner">
									<div class="main-first-info">
										<div class="availability">
											<span class="in-stock"></span> В наличии
										</div>
									</div>
									<div class="price">
										<p>[[format_pr? &format_pr=`[*new_price*]`]] <span class="price_rub">руб.</span></p>

										<span class="price-old-wrap">
											<span class="price_old_rub_val">[[format_pr? &format_pr=`[*old_price*]`]]</span>
											<span class="price_old_rub"> руб.</span>
										</span>

									</div>

									<div class="card-buy-wrap">
										<div class="card-buy-economy">
											Экономия
											<div class="card-buy-economy__sum">
												543.00 руб.
											</div>
										</div>

										<div class="card-buy__promo">

											<!--@- дата конца акции, скрытый блок -@-->
											<span class="active_to">Sep 09 2018 11:58:00</span>

											<div class="card-buy__promo-title">До конца акции</div>
											<div id="countdown"></div>
										</div>

										<div class="card-buy__low-cost">
											<a href="#">
												<img src="assets/templates/market/img/update/low-cost.svg" alt="">
												<span>Нашли дешевле?</span>
											</a>
										</div>


										<div class="buy-block shk-item">
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

											<div class="in-basket-btn">
												<svg width="13" height="10" viewBox="0 0 13 10" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
													<g id="Canvas__checked-in-basket">
														<path id="Vector__checked-in-basket" d="M 0 2.8L 4.125 7L 11 0" transform="translate(1 1)" stroke-width="2" />
													</g>
												</svg>
												В корзине
											</div>
										</div>
										<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one">Купить в 1 клик</a>
										<a href="#product" data-product="Заказать товар «[*pagetitle*]»" data-uk-modal class="buy-one">Заказать</a>
									</div>

								</div>
								<div class="main-first-info-presence__description">
									<p>На 2017 год у Samsung очень большие планы. Компании надо реабилитироваться после ситуации с дефектным Note 7.
									</p>
									<span class="presence-description-more">Подробнее</span>
								</div>

							</div>
						</div>
					</div>

					<!-- преимущества -->
					<div class="dignity-main-wrap progect-page card-page">
						<div class="dignity-main-element">
							<div class="flex-block">
								<div class="img">
									<img src="assets/templates/market/img/update/file.svg" alt="">
								</div>
								<p><a href="about.html">Весь товар сертифицирован на гарантии</a></p>
							</div>
						</div>

						<div class="dignity-main-element">
							<div class="flex-block">
								<div class="img">
									<img src="assets/templates/market/img/update/clock.svg" alt="">
								</div>
								<p><a href="about.html">Оперативная доставка и выгрузка товара</a></p>
							</div>
						</div>

						<div class="dignity-main-element">
							<div class="flex-block">
								<div class="img">
									<img src="assets/templates/market/img/update/price-tag.svg" alt="">
								</div>
								<p>Низкие цены и широкий ассортимент</p>
							</div>
						</div>
					</div>

					<!-- таблица цен -->
					<div class="cost-table-wrap card-page">
						<h4>Цены</h4>

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

					<!-- наличие в магазинах -->
					<div class="available-in-stores card-page">
						<h4>Наличие в магазинах</h4>

						<div class="available-in-stores-wrap">

							<div class="available-in-stores-row">
								<div class="available-in-stores__address">
									г. Москва, ул. Большая, 7/10
								</div>
								<div class="available-in-stores__status in-stock">
									В наличии
								</div>
							</div>

							<div class="available-in-stores-row">
								<div class="available-in-stores__address">
									г. Санкт-Петербург, Невский проспект, 35
								</div>
								<div class="available-in-stores__status not-available">
									Нет в наличии
								</div>
							</div>

							<div class="available-in-stores-row">
								<div class="available-in-stores__address">
									г. Москва, ул. Большая, 7/10
								</div>
								<div class="available-in-stores__status reservation">
									Под заказ
								</div>
							</div>

						</div>
					</div>

					<!-- таблица характеристик -->
					<div class="card-description">
						<h4>Характеристики</h4>

						<div class="card-description__table-wrap hidden">
							<table class="card-description__table">
								<tr>
									<td>
										Операционная система
									</td>
									<td>
										5.8"
									</td>
								</tr>

								<tr>
									<td>
										Размер экрана

										<div class="tooltip-wrap">
											<img src="assets/templates/market/img/update/question-table.svg" alt="">
											<div class="tooltip-content">
												Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст 
												Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст Скрытый текст 
											</div>
										</div>
									</td>
									<td>
										Android 7.0 Nougat Android 7.0 Nougat Android 7.0 Nougat
										Android 7.0 Nougat Android 7.0 Nougat
									</td>
								</tr>

								<tr>
									<td>
										Разрешение экрана Разрешение экрана Разрешение экрана Разрешение  экрана
									</td>
									<td>
										1440x2960
									</td>
								</tr>

								<tr>
									<td>
										Оперативная память
									</td>
									<td>
										4 ГБ  (LPDDR4)
									</td>
								</tr>

								<tr>
									<td>
										Флэш-память
									</td>
									<td>
										64 ГБ  (UFS 2.1)
									</td>
								</tr>

								<tr>
									<td>
										Встроенная камера
									</td>
									<td>
										<img src="assets/templates/market/img/no-ico.png" alt="">
									</td>
								</tr>

								<tr>
									<td>
										Количество точек матрицы
									</td>
									<td>
										<img src="assets/templates/market/img/yes-ico.png" alt="">
									</td>
								</tr>

								<tr>
									<td>
										Количество SIM-карт
									</td>
									<td>
										2
									</td>
								</tr>

								<!-- повтор -->
								<tr>
									<td>
										Операционная система
									</td>
									<td>
										5.8"
									</td>
								</tr>

								<tr>
									<td>
										Размер экрана
									</td>
									<td>
										Android 7.0 Nougat Android 7.0 Nougat Android 7.0 Nougat
										Android 7.0 Nougat Android 7.0 Nougat
									</td>
								</tr>

								<tr>
									<td>
										Разрешение экрана Разрешение экрана Разрешение экрана Разрешение  экрана
									</td>
									<td>
										1440x2960
									</td>
								</tr>

								<tr>
									<td>
										Оперативная память
									</td>
									<td>
										4 ГБ  (LPDDR4)
									</td>
								</tr>

								<tr>
									<td>
										Флэш-память
									</td>
									<td>
										64 ГБ  (UFS 2.1)
									</td>
								</tr>

								<tr>
									<td>
										Встроенная камера
									</td>
									<td>
										<img src="assets/templates/market/img/no-ico.png" alt="">
									</td>
								</tr>

								<tr>
									<td>
										Количество точек матрицы
									</td>
									<td>
										<img src="assets/templates/market/img/yes-ico.png" alt="">
									</td>
								</tr>

								<tr>
									<td>
										Количество SIM-карт
									</td>
									<td>
										2
									</td>
								</tr>
							</table>
						</div>

						<div class='table-more'>Подробные характеристики</div>
					</div>



					<!--@-{{specifications_prod_new}}-@-->

					<!-- документы -->
					<div class="card-documents">
						<h4>Документы</h4>

						<div class="card-documents-wrap">
							<div class="card-documents__el">
								<div class="card-documents__el-img"></div>
								<div class="card-documents__el-inner">
									<a href="assets/download/instr.xls" download>
										Инструкция Инструкция
										Инструкция. Инструкция. Инструкция.
										Иструкция. Инструкция. Иструкция.xls
									</a>
									<div class="card-documents__el-file-size">
										Размер <span>125,45 КБ</span>
									</div>
								</div>
							</div>

							<div class="card-documents__el">
								<div class="card-documents__el-img"></div>
								<div class="card-documents__el-inner">
									<a href="assets/download/instr.doc" download>
										Инструкция Инструкция Инструкция. Инструкция. Инструкция.doc
									</a>
									<div class="card-documents__el-file-size">
										Размер <span>47,1 КБ</span>
									</div>
								</div>
							</div>

							<div class="card-documents__el">
								<div class="card-documents__el-img"></div>
								<div class="card-documents__el-inner">
									<a href="assets/download/instr.pdf" download>
										Инструкция.pdf
									</a>
									<div class="card-documents__el-file-size">
										Размер <span>47,1 КБ</span>
									</div>
								</div>
							</div>

							<div class="card-documents__el">
								<div class="card-documents__el-img"></div>
								<div class="card-documents__el-inner">
									<a href="assets/download/instr.zip" download>
										Сертификат.zip
									</a>
									<div class="card-documents__el-file-size">
										Размер <span>47,1 КБ</span>
									</div>
								</div>
							</div>

							<div class="card-documents__el">
								<div class="card-documents__el-img"></div>
								<div class="card-documents__el-inner">
									<a href="assets/download/instr.rar" download>
										Архив.rar
									</a>
									<div class="card-documents__el-file-size">
										Размер <span>47,1 КБ</span>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!--@-
<div class="card-service">
<h4>Услуги</h4>

<ul>
<li><a href="#">Доставка</a></li>
<li><a href="#">Установка</a></li>
</ul>
</div>
-@-->


					<!--@- Описание -@-->
					<div class="card-description-more">
						<h4>Описание</h4>

						<div class="card-description-more__txt hidden">
							<p>На 2017 год у Samsung очень большие планы. Компании надо реабилитироваться после ситуации с дефектным Note 7, а значит —
								выпускать по-настоящему революционные продукты, после знакомства с которыми пользователь даже вспоминать не захочет
								о прошлогодних проблемах «планшетофона» со стилусом. Такими устройствами должны стать Galaxy S8 и S8+, которые мы тщательно
								тестировали в течение недели. </p>
							<p>На 2017 год у Samsung очень большие планы. Компании надо реабилитироваться после ситуации с дефектным Note 7, а значит —
								выпускать по-настоящему революционные продукты, после знакомства с которыми пользователь даже вспоминать не захочет
								о прошлогодних проблемах «планшетофона» со стилусом. Такими устройствами должны стать Galaxy S8 и S8+, которые мы тщательно
								тестировали в течение недели. </p>
							<p>На 2017 год у Samsung очень большие планы. Компании надо реабилитироваться после ситуации с дефектным Note 7, а значит —
								выпускать по-настоящему революционные продукты, после знакомства с которыми пользователь даже вспоминать не захочет
								о прошлогодних проблемах «планшетофона» со стилусом. Такими устройствами должны стать Galaxy S8 и S8+, которые мы тщательно
								тестировали в течение недели. </p>
						</div>
						<span class="card-description-more__btn">Подробнее</span>
					</div>

					<!--@- Видео -@-->
					<div class="video-block">
						<h4>Видео</h4>

						<div class="video-block-inner">
							<div class="video-block-el">
								<iframe src="https://www.youtube.com/embed/x6BIMbtnc7Y" frameborder="0" allowfullscreen></iframe>
							</div>
							<div class="video-block-el">
								<iframe src="https://www.youtube.com/embed/x6BIMbtnc7Y" frameborder="0" allowfullscreen></iframe>
							</div>
							<div class="video-block-el">
								<iframe src="https://www.youtube.com/embed/x6BIMbtnc7Y" frameborder="0" allowfullscreen></iframe>
							</div>
						</div>
					</div>

					<!--@- Прайс-лист -@-->
					<div class="price-sheet">
						<h4>Прайс-лист</h4>

						<div class="price-text">
							[[DocLister? &id=`price` &parents=`14` &depth=`0` &tvPrefix=`` &tvList=`file_price` &tpl=`price_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0` &filters=``]]
						</div>
					</div>

					<!--@- Галерея -@-->
					<div class="card-gallery">
						<h4>Галерея</h4>

						<div class="card-gallery-slider">
							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>

							<div class="card-gallery-slider__el">
								<a href="assets/templates/market/img/card-gallery.jpg">
									<img src="assets/templates/market/img/card-gallery.jpg" alt="">
									<div class="card-gallery-slider__overlay"></div>
								</a>
							</div>
						</div>

						<div class="card-gallery-slider-pager">
							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>

							<div class="card-gallery-slider-pager__el">
								<img src="assets/templates/market/img/card-gallery.jpg" alt="">
							</div>
						</div>
					</div>

					<!--@- Наши специалисты -@-->
					<div class="our-specialists">
						<h4>Наши специалисты</h4>

						<div class="our-specialists-wrap">
							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec1.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр
										</div>
										<div class="our-specialists__post">
											Начальник отдела продаж
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec2.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр Валентинович
										</div>
										<div class="our-specialists__post">
											Начальник отдела продаж
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec3.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!--@- Наши специалисты -@-->
					<div class="our-specialists">
						<h4>Наши специалисты</h4>

						<div class="our-specialists-wrap">
							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec1.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр
										</div>
										<div class="our-specialists__post">
											Начальник отдела продаж
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec2.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр Валентинович
										</div>
										<div class="our-specialists__post">
											Начальник отдела продаж
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec3.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec3.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

							<div class="our-specialists-el">
								<div class="our-specialists-wrap-inner">
									<div class="our-specialists__img">
										<img src="assets/templates/market/img/spec3.jpg" alt="">
									</div>
									<div class="our-specialists-info">
										<div class="our-specialists__name">
											Шленковский<br> Александр
										</div>
										<div class="our-specialists__mail">
											<img src="assets/templates/market/img/spec-mail.png" alt="">
											sales_alexander@market.by
										</div>
										<div class="our-specialists__phone">
											<img src="assets/templates/market/img/spec-phone.png" alt="">
											+375 (44) 547-22-38
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!--@- Персональный менеджер -@-->
					<div class="personal-manager">
						<div class="personal-manager__img">
							<img src="assets/templates/market/img/personal-manager.jpg" alt="">
						</div>
						<div class="personal-manager__info">
							<div class="personal-manager__info-title">Ваш личный менеджер</div>
							<div class="personal-manager__name">Валерия Гутко</div>
						</div>
						<div class="personal-manager__phone">
							<img src="assets/templates/market/img/manager-phone.png" alt="">
							+375 (29) 708-22-47 (МТС);
						</div>
						<div class="personal-manager__mail">
							<img src="assets/templates/market/img/manager-mail.png" alt="">
							<span>valery_manager@market.by</span>
						</div>
					</div>

					<!--@- Выполненные проекты -@-->
					<div class="completed-projects">
						<h4>Выполненные проекты</h4>

						<div class="completed-projects-slider">

							<div class="completed-projects-slider-el-wrap">
								<div class="completed-projects-slider-el">
									<div class="completed-projects-slider__img">
										<img src="assets/templates/market/img/projects-completed.jpg" alt="">
									</div>
									<div class="completed-projects-slider__info">
										<div class="completed-projects-slider__info-title">
											<a href="#">
												<span>Разработка 3D-чертежа ТЦ «Галерея минск»</span>
											</a>
										</div>
										<div class="completed-projects-slider__info-el">
											<p><span>Задача:</span> Проектрировани чертежа будущего торгового центра</p>
											<p><span>Площадь застройки: </span> 200 м<sup>2</sup></p>
											<a href="#">Подробнее</a>
										</div>
									</div>
								</div>
							</div>

							<div class="completed-projects-slider-el-wrap">
								<div class="completed-projects-slider-el">
									<div class="completed-projects-slider__img">
										<img src="assets/templates/market/img/projects-completed.jpg" alt="">
									</div>
									<div class="completed-projects-slider__info">
										<div class="completed-projects-slider__info-title">
											<a href="#">
												<span>Разработка 3D-чертежа ТЦ «Галерея минск»</span>
											</a>
										</div>
										<div class="completed-projects-slider__info-el">
											<p><span>Задача:</span> Проектрировани чертежа будущего торгового центра</p>
											<p><span>Площадь застройки: </span> 200 м<sup>2</sup></p>
											<a href="#">Подробнее</a>
										</div>
									</div>
								</div>
							</div>

							<div class="completed-projects-slider-el-wrap">
								<div class="completed-projects-slider-el">
									<div class="completed-projects-slider__img">
										<img src="assets/templates/market/img/projects-completed.jpg" alt="">
									</div>
									<div class="completed-projects-slider__info">
										<div class="completed-projects-slider__info-title">
											<a href="#">
												<span>Разработка 3D-чертежа ТЦ «Галерея минск»</span>
											</a>
										</div>
										<div class="completed-projects-slider__info-el">
											<p><span>Задача:</span> Проектрировани чертежа будущего торгового центра</p>
											<p><span>Площадь застройки: </span> 200 м<sup>2</sup></p>
											<a href="#">Подробнее</a>
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>

					<!--@- Услуги -@-->
					<div class="card-services">
						<h4>Услуги</h4>

						<div class="completed-project-inner card-services-slider">
							<!--  -->
							<div class="completed-project-item-wrap">
								<div class="completed-project-item">
									<a href="#">
										<div class="completed-project__img">
											<img src="assets/templates/market/img/progects1.jpg" alt="">
										</div>
										<div class="completed-project-content">
											<div class="completed-project-content-wrap">
												<div class="completed-project-content__title">
													Замена проводки Тургенева
													<p>
														Группа компаний «Электромастер» предоставляет
														все виды услуг по проектированию, монтажу...
													</p>
													<div class="completed-project__more">Подробнее</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<!--  -->
							<div class="completed-project-item-wrap">
								<div class="completed-project-item">
									<a href="#">
										<div class="completed-project__img">
											<img src="assets/templates/market/img/progects2.jpg" alt="">
										</div>
										<div class="completed-project-content">
											<div class="completed-project-content-wrap">
												<div class="completed-project-content__title">
													Замена проводки Тургенева Вторая строка
													<p>
														Группа компаний «Электромастер» предоставляет
														все виды услуг по проектированию, монтажу...
													</p>
													<div class="completed-project__more">Подробнее</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<!--  -->
							<div class="completed-project-item-wrap">
								<div class="completed-project-item">
									<a href="#">
										<div class="completed-project__img">
											<img src="assets/templates/market/img/progects1.jpg" alt="">
										</div>
										<div class="completed-project-content">
											<div class="completed-project-content-wrap">
												<div class="completed-project-content__title">
													Замена проводки Тургенева
													<p>
														Группа компаний «Электромастер» предоставляет
														все виды услуг по проектированию, монтажу...
													</p>
													<div class="completed-project__more">Подробнее</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

							<!--  -->
							<div class="completed-project-item-wrap">
								<div class="completed-project-item">
									<a href="#">
										<div class="completed-project__img">
											<img src="assets/templates/market/img/progects1.jpg" alt="">
										</div>
										<div class="completed-project-content">
											<div class="completed-project-content-wrap">
												<div class="completed-project-content__title">
													Замена проводки Тургенева
													<p>
														Группа компаний «Электромастер» предоставляет
														все виды услуг по проектированию, монтажу...
													</p>
													<div class="completed-project__more">Подробнее</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>

						</div>
					</div>

					<!--@- Советуем почитать -@-->
					<div class="card-services">
						<h4>Советуем почитать</h4>

						<div class="recomended-slider">

							<div class="projects-page-column diluting-page">

								<div class="completed-projects-slider-el-wrap">
									<div class="completed-projects-slider-el">
										<div class="completed-projects-slider__img">
											<img src="assets/templates/market/img/update/projects2x456.jpg" alt="">
										</div>
										<div class="completed-projects-slider__info">
											<div class="completed-projects-slider__info-title">
												<a href="#">
													<span>Разработка 3D-чертежа ТЦ «Галерея минск»</span>
												</a>
											</div>
											<div class="completed-projects-slider__info-el">
												<p><span>Задача:</span> Проектрировани чертежабудущего торгового центра в г. Минске с использование AutoCAD </p>
												<p><span>Площадь застройки:</span> 200 м<sup>2</sup></p>
												<p><span>Цена:</span> 10 000 000 руб.</p>
											</div>
										</div>
									</div>
								</div>

								<div class="completed-projects-slider-el-wrap">
									<div class="completed-projects-slider-el">
										<div class="completed-projects-slider__img">
											<img src="assets/templates/market/img/update/projects2x456.jpg" alt="">
										</div>
										<div class="completed-projects-slider__info">
											<div class="completed-projects-slider__info-title">
												<a href="#">
													<span>Разработка 3D-чертежа ТЦ «Галерея минск»</span>
												</a>
											</div>
											<div class="completed-projects-slider__info-el">
												<p>Проектрировани чертежабудущего торгового центра в <nobr>г. Минске</nobr> с использование AutoCAD</p>
											</div>
										</div>
									</div>
								</div>

							</div>

							<div class="projects-page-column diluting-page">

								<div class="completed-projects-slider-el-wrap">
									<div class="completed-projects-slider-el">
										<div class="completed-projects-slider__img">
											<img src="assets/templates/market/img/update/projects2x456.jpg" alt="">
										</div>
										<div class="completed-projects-slider__info">
											<div class="completed-projects-slider__info-title">
												<a href="#">
													<span>Разработка 3D-чертежа ТЦ «Галерея минск»</span>
												</a>
											</div>
											<div class="completed-projects-slider__info-el">
												<p><span>Задача:</span> Проектрировани чертежабудущего торгового центра в г. Минске с использование AutoCAD </p>
												<p><span>Площадь застройки:</span> 200 м<sup>2</sup></p>
												<p><span>Цена:</span> 10 000 000 руб.</p>
											</div>
										</div>
									</div>
								</div>

								<div class="completed-projects-slider-el-wrap">
									<div class="completed-projects-slider-el">
										<div class="completed-projects-slider__img">
											<img src="assets/templates/market/img/update/projects2x456.jpg" alt="">
										</div>
										<div class="completed-projects-slider__info">
											<div class="completed-projects-slider__info-title">
												<a href="#">
													<span>Разработка 3D-чертежа ТЦ «Галерея минск»</span>
												</a>
											</div>
											<div class="completed-projects-slider__info-el">
												<p>Проектрировани чертежабудущего торгового центра в <nobr>г. Минске</nobr> с использование AutoCAD</p>
											</div>
										</div>
									</div>
								</div>

							</div>

						</div>


					</div>

					<!--@- Советуем почитать -@-->
					<div class="information-main">
						<h4>Советуем почитать</h4>

						<div class="news">
							<div class="news-element-slider">
								<div class="news-element">
									<div class="img">
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<img src="assets/templates/market/img/progects1.jpg" alt="Фотофакт: в Минске собрались любители Ford Mondeo">
										</a>
									</div>
									<div class="content">
										<p class="data">11.07.2016</p>
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<p class="text">Фотофакт: в Минске собрались любители Ford Mondeo</p>
										</a>
									</div>
								</div>

								<div class="news-element">
									<div class="img">
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<img src="assets/templates/market/img/progects1.jpg" alt="Фотофакт: в Минске собрались любители Ford Mondeo">
										</a>
									</div>
									<div class="content">
										<p class="data">11.07.2016</p>
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<p class="text">Фотофакт: в Минске собрались любители Ford Mondeo</p>
										</a>
									</div>
								</div>

								<div class="news-element">
									<div class="img">
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<img src="assets/templates/market/img/progects1.jpg" alt="Фотофакт: в Минске собрались любители Ford Mondeo">
										</a>
									</div>
									<div class="content">
										<p class="data">11.07.2016</p>
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<p class="text">Фотофакт: в Минске собрались любители Ford Mondeo</p>
										</a>
									</div>
								</div>

								<div class="news-element">
									<div class="img">
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<img src="assets/templates/market/img/progects1.jpg" alt="Фотофакт: в Минске собрались любители Ford Mondeo">
										</a>
									</div>
									<div class="content">
										<p class="data">11.07.2016</p>
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<p class="text">Фотофакт: в Минске собрались любители Ford Mondeo</p>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--@- Советуем почитать -@-->
					<div class="information-main">
						<h4>Советуем почитать</h4>

						<div class="news no-date">
							<div class="news-element-slider">
								<div class="news-element">
									<div class="img">
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<img src="assets/templates/market/img/progects1.jpg" alt="Фотофакт: в Минске собрались любители Ford Mondeo">
										</a>
									</div>
									<div class="content">
										<p class="data">11.07.2016</p>
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<p class="text">Фотофакт: в Минске собрались любители Ford Mondeo</p>
										</a>
									</div>
								</div>

								<div class="news-element">
									<div class="img">
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<img src="assets/templates/market/img/progects1.jpg" alt="Фотофакт: в Минске собрались любители Ford Mondeo">
										</a>
									</div>
									<div class="content">
										<p class="data">11.07.2016</p>
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<p class="text">Фотофакт: в Минске собрались любители Ford Mondeo</p>
										</a>
									</div>
								</div>

								<div class="news-element">
									<div class="img">
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<img src="assets/templates/market/img/progects1.jpg" alt="Фотофакт: в Минске собрались любители Ford Mondeo">
										</a>
									</div>
									<div class="content">
										<p class="data">11.07.2016</p>
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<p class="text">Фотофакт: в Минске собрались любители Ford Mondeo</p>
										</a>
									</div>
								</div>

								<div class="news-element">
									<div class="img">
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<img src="assets/templates/market/img/progects1.jpg" alt="Фотофакт: в Минске собрались любители Ford Mondeo">
										</a>
									</div>
									<div class="content">
										<p class="data">11.07.2016</p>
										<a href="http://market.webcompany.by/about/news/fotofakt-v-minske-sobralis-lyubiteli-ford-mondeo.html">
											<p class="text">Фотофакт: в Минске собрались любители Ford Mondeo</p>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!--@- Сертификаты слайдер-@-->
					<div class="sertificates-wrap-slider ">
						<h4>Сертификаты</h4>

						<div class="sertificates-slider">
							<div class="sertificates-item">
								<a href="assets/images/certificates/sert_2.jpg" data-uk-lightbox="{group:'group1'}" title="">
									<img src="assets/cache/images/certificates/sert_2-211x297-b6a.png" alt="">
								</a>
							</div>

							<div class="sertificates-item">
								<a href="assets/images/certificates/sert_5.jpg" data-uk-lightbox="{group:'group1'}" title="">
									<img src="assets/cache/images/certificates/sert_5-211x297-06c.png" alt="">
								</a>
							</div>

							<div class="sertificates-item">
								<a href="assets/images/certificates/sert_6.jpg" data-uk-lightbox="{group:'group1'}" title="">
									<img src="assets/cache/images/certificates/sert_6-211x297-b6a.png" alt="">
								</a>
							</div>

							<div class="sertificates-item">
								<a href="assets/images/certificates/sert_2.jpg" data-uk-lightbox="{group:'group1'}" title="">
									<img src="assets/cache/images/certificates/sert_2-211x297-b6a.png" alt="">
								</a>
							</div>

							<div class="sertificates-item">
								<a href="assets/images/certificates/sert_3.jpg" data-uk-lightbox="{group:'group1'}" title="">
									<img src="assets/cache/images/certificates/sert_3-211x297-b6a.png" alt="">
								</a>
							</div>
						</div>
					</div>

					<!--@- Сертификаты -@-->
					<div class="sertificates-wrap">
						<h4>Сертификаты</h4>

						<div class="sertificates">
							<div class="sertificates-item">
								<a href="assets/images/certificates/sert_2.jpg" data-uk-lightbox="{group:'group1'}" title="">
									<img src="assets/cache/images/certificates/sert_2-211x297-b6a.png" alt="">
								</a>
							</div>

							<div class="sertificates-item">
								<a href="assets/images/certificates/sert_2.jpg" data-uk-lightbox="{group:'group1'}" title="">
									<img src="assets/cache/images/certificates/sert_2-211x297-b6a.png" alt="">
								</a>
							</div>

							<div class="sertificates-item">
								<a href="assets/images/certificates/sert_5.jpg" data-uk-lightbox="{group:'group1'}" title="">
									<img src="assets/cache/images/certificates/sert_5-211x297-06c.png" alt="">
								</a>
							</div>

							<div class="sertificates-item">
								<a href="assets/images/certificates/sert_6.jpg" data-uk-lightbox="{group:'group1'}" title="">
									<img src="assets/cache/images/certificates/sert_6-211x297-b6a.png" alt="">
								</a>
							</div>

							<div class="sertificates-item">
								<a href="assets/images/certificates/sert_2.jpg" data-uk-lightbox="{group:'group1'}" title="">
									<img src="assets/cache/images/certificates/sert_2-211x297-b6a.png" alt="">
								</a>
							</div>
						</div>
					</div>

					<!--@- Расписание -@-->
					<div class="card-schedule">
						<h4>Расписание</h4>

						<div class="card-schedule-wrap">
							<iframe src="https://calendar.google.com/calendar/embed?showTitle=0&amp;mode=WEEK&amp;height=580&amp;wkst=2&amp;bgcolor=%23FFFFFF&amp;src=mipfjb1b4js9uhiunjh8b88pj4%40group.calendar.google.com&amp;color=%23711616&amp;ctz=Europe%2FMinsk" style="border-width:0" width="726" height="580" frameborder="0" scrolling="no"></iframe>
						</div>
					</div>

					<!--@- С этим товаром покупают -@-->
					<div class="preview-product">
						<div class="container uk-position-relative">
							<h4>С этим товаром покупают</h4>

							<div class="more-buy">
								[[DocLister? &id=`similar_items` &parents=`53` &depth=`5` &tvPrefix=`` &tvList=`product_prev,novelty,sale,bestseller,articul,new_price,old_price,img_prew_prod` &tpl=`similar_items_tpl` &orderBy=`menuindex ASC` &total=`20` &noneWrapOuter=`0` &filters=`AND(content:template:in:38,64;tvd:display_on_index:=:1)` &prepare=`class_order_add`]]
							</div>
							<div class="slider-controls">
								<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""/></div>
								<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""/></div>
							</div>
						</div>
					</div>

					<!--@- Отзывы -@-->
					<div class="card-reviews">
						<div class="title-wrap">
							<h4>Отзывы</h4>
							<a href="#callback" data-uk-modal class="title-button">Добавить отзыв</a>
						</div>

						<div class="card-review-wrap">
							<div class="card-reviews-el">
								<div class="card-reviews-el-header">
									<div class="card-reviews-el-header-info">
										<div class="card-reviews-el-header__name">
											Николай Василевский
										</div>
										<div class="card-reviews-el-header__post">
											Генеральный директор «ОАО “ГазПром”»
										</div>
									</div>
									<div class="card-reviews-el-header-soc">
										<a href="#">
											<img src="assets/templates/market/img/reviews-vk.svg" alt="">
										</a>
										<a href="#">
											<img src="assets/templates/market/img/reviews-facebook.svg" alt="">
										</a>
										<a href="#">
											<img src="assets/templates/market/img/reviews-ok.svg" alt="">
										</a>
										<a href="#">
											<img src="assets/templates/market/img/reviews-twitter.svg" alt="">
										</a>
									</div>
								</div>
								<div class="card-reviews-el-inner">
									<div class="card-reviews-el-inner__txt">
										<p>
											Вот и до меня добрались эти чудо-резиночки. В моем отзыве речь пойдет только об оригиналах.
											Я не стала покупать китайские подделки, так как часть резиночек предназначена на символические подарки.
											А подделки дарить считаю вообще не комильфо
										</p>
									</div>
									<div class="card-reviews-el-inner-btns">
										<a href="#" class="card-reviews-el__more"><span>Читать подробнее...</span></a>
										<a href="assets/templates/market/img/personal-manager.jpg" class="fancyshow">
											<img src="assets/templates/market/img/reviews-document.svg" alt="">
											<span>Смотреть оригинал</span>
										</a>
									</div>
								</div>
							</div>

							<div class="card-reviews-el">
								<div class="card-reviews-el-header">
									<div class="card-reviews-el-header-info">
										<div class="card-reviews-el-header__name">
											Николай Василевский
										</div>
									</div>
								</div>
								<div class="card-reviews-el-inner">
									<div class="card-reviews-el-inner__txt">
										<p>
											Вот и до меня добрались эти чудо-резиночки. В моем отзыве речь пойдет только об оригиналах.
											Я не стала покупать китайские подделки, так как часть резиночек предназначена на символические подарки.
											А подделки дарить считаю вообще не комильфо
										</p>
									</div>
									<div class="card-reviews-el-inner-btns">
										<a href="#" class="card-reviews-el__more"><span>Читать подробнее...</span></a>
									</div>
								</div>
							</div>

							<div class="card-reviews-el">
								<div class="card-reviews-el-header">
									<div class="card-reviews-el-header-info">
										<div class="card-reviews-el-header__name">
											Николай Василевский
										</div>
									</div>
								</div>
								<div class="card-reviews-el-inner">
									<div class="card-reviews-el-inner__txt">
										<p>
											Вот и до меня добрались эти чудо-резиночки. В моем отзыве речь пойдет только об оригиналах.
											Я не стала покупать китайские подделки, так как часть резиночек предназначена на символические подарки.
											А подделки дарить считаю вообще не комильфо
										</p>
									</div>
									<div class="card-reviews-el-inner-btns">
										<a href="#" class="card-reviews-el__more"><span>Читать подробнее...</span></a>
									</div>
								</div>
							</div>
						</div>
						<div class="button-center">
							<a href="#" class="view-more arrow">
								<svg width="16" height="16" viewBox="0 0 16 16" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
									<g id="Canvas__refresh" transform="translate(-11171 838)">
										<g id="refresh-button">
											<g id="Group__refresh">
												<g id="refresh__refresh">
													<g id="Vector_refresh">
														<use xlink:href="#refresh_fill" transform="translate(11171 -838)"></use>
													</g>
												</g>
											</g>
										</g>
									</g>
									<defs>
										<path id="refresh_fill" d="M 13.6 2.4C 12.2 0.9 10.2 0 8 0C 3.6 0 0 3.6 0 8C 0 12.4 3.6 16 8 16C 11.7 16 14.8 13.4 15.7 10L 13.6 10C 12.8 12.3 10.6 14 8 14C 4.7 14 2 11.3 2 8C 2 4.7 4.7 2 8 2C 9.7 2 11.1 2.7 12.2 3.8L 9 7L 16 7L 16 0L 13.6 2.4Z"></path>
									</defs>
								</svg>
								<span>Показать еще</span>
							</a>
						</div>
					</div>

					<!--@- Вопросы -@-->
					<div class="card-reviews">
						<div class="title-wrap">
							<h4>Вопросы</h4>
							<a href="#callback" data-uk-modal class="title-button">Добавить свой вопрос</a>
						</div>

						<div class="question-wrap">
							<div class="question-el">
								<div class="question-title">
									Что такое оптико-эмиссионная спектрометрия?
								</div>
								<div class="question-answer">
									Оптико-эмиссионная спектрометрия с индуктивно-связанной плазмой, также называемая атомно-эмиссионной спектрометрией с индуктивно-связанной плазмой,
									является аналитическим методом, предназначенным для определения малых содержаний ряда элементов в образцах различного типа. Этот метод представляет
									собой разновидность эмиссионной спектрометрии, в которой для возбуждения атомов используется высокотемпературная контролируемая с помощью
									электромагнитного поля.
								</div>
							</div>
							<div class="question-el">
								<div class="question-title">
									Что такое оптико-эмиссионная спектрометрия?
								</div>
								<div class="question-answer">
									Оптико-эмиссионная спектрометрия с индуктивно-связанной плазмой, также называемая атомно-эмиссионной спектрометрией с индуктивно-связанной плазмой,
									является аналитическим методом, предназначенным для определения малых содержаний ряда элементов в образцах различного типа. Этот метод представляет
									собой разновидность эмиссионной спектрометрии, в которой для возбуждения атомов используется высокотемпературная контролируемая с помощью
									электромагнитного поля.
								</div>
							</div>
						</div>

						<p>
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
							quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.
							Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae.
						</p>
					</div>

					<!--@- Вопросы -@-->
					<div class="card-reviews">
						<div class="title-wrap">
							<h4>Вопросы</h4>
							<a href="#callback" data-uk-modal class="title-button">Добавить свой вопрос</a>
						</div>

						<div class="question-wrap">
							<div class="question-el">
								<div class="question-title">
									Что такое оптико-эмиссионная спектрометрия, оптико-эмиссионная спектрометрия с индуктивно-связанной плазменной оболочкой?
								</div>
								<div class="question-answer">
									Оптико-эмиссионная спектрометрия с индуктивно-связанной плазмой, также называемая атомно-эмиссионной спектрометрией с индуктивно-связанной плазмой,
									является аналитическим методом, предназначенным для определения малых содержаний ряда элементов в образцах различного типа. Этот метод представляет
									собой разновидность эмиссионной спектрометрии, в которой для возбуждения атомов используется высокотемпературная контролируемая с помощью
									электромагнитного поля.
								</div>
							</div>
							<div class="question-el">
								<div class="question-title">
									Что такое оптико-эмиссионная спектрометрия?
								</div>
								<div class="question-answer">
									Оптико-эмиссионная спектрометрия с индуктивно-связанной плазмой, также называемая атомно-эмиссионной спектрометрией с индуктивно-связанной плазмой,
									является аналитическим методом, предназначенным для определения малых содержаний ряда элементов в образцах различного типа. Этот метод представляет
									собой разновидность эмиссионной спектрометрии, в которой для возбуждения атомов используется высокотемпературная контролируемая с помощью
									электромагнитного поля.
								</div>
							</div>
						</div>
						<p>
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
							quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus.
							Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae.
						</p>
					</div>

					<!--@- Стили для текста -@-->
					<div class="style-txt">
						<h4>Заголовки</h4>

						<h1>Header 1</h1>
						<div class="column-txt">
							<p>Lorem Ipsum is simply dummy text of the printing and 
								typesetting industry.Lorem Ipsum has been the industry's 
								standard dummy text ever since the 1500s, when an unknown 
								printer took a galley of type and scrambled it to make a type 
								specimen book. It has survived not only five centuries, but also 
								the leap into electronic typesetting.</p>
							<p>Lorem Ipsum is simply dummy text of the printing and 
								typesetting industry.Lorem Ipsum has been the industry's 
								standard dummy text ever since the 1500s, when an unknown 
								printer took a galley of type and scrambled it to make a type 
								specimen book. It has survived not only five centuries, but also 
								the leap into electronic typesetting.</p>
						</div>

						<h2>Header 2</h2>
						<div>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text 
								ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not 
								only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with 
								the release of Letraset sheets containing </p>
						</div>

						<h3>Header 3</h3>
						<div class="column-txt">
							<p>Lorem Ipsum is simply dummy text of the printing and 
								typesetting industry.Lorem Ipsum has been the industry's 
								standard dummy text ever since the 1500s, when an unknown 
								printer took a galley of type and scrambled it to make a type 
								specimen book. It has survived not only five centuries, but also 
								the leap into electronic typesetting.</p>
							<p>Lorem Ipsum is simply dummy text of the printing and 
								typesetting industry.Lorem Ipsum has been the industry's 
								standard dummy text ever since the 1500s, when an unknown 
								printer took a galley of type and scrambled it to make a type 
								specimen book. It has survived not only five centuries, but also 
								the leap into electronic typesetting.</p>
						</div>

						<h4>Header 4</h4>
						<div>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text 
								ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not 
								only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with 
								the release of Letraset sheets containing </p>
						</div>

						<h5>Header 5</h5>
						<div class="column-txt">
							<p>Lorem Ipsum is simply dummy text of the printing and 
								typesetting industry.Lorem Ipsum has been the industry's 
								standard dummy text ever since the 1500s, when an unknown 
								printer took a galley of type and scrambled it to make a type 
								specimen book. It has survived not only five centuries, but also 
								the leap into electronic typesetting.</p>
							<p>Lorem Ipsum is simply dummy text of the printing and 
								typesetting industry.Lorem Ipsum has been the industry's 
								standard dummy text ever since the 1500s, when an unknown 
								printer took a galley of type and scrambled it to make a type 
								specimen book. It has survived not only five centuries, but also 
								the leap into electronic typesetting.</p>
						</div>

						<h6>Header 6</h6>
						<div>
							<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text 
								ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not 
								only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with 
								the release of Letraset sheets containing </p>
						</div>

						<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text 
							ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not 
							only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with 
							the release of Letraset sheets containing </p>


						<h4>Список с точками:</h4>
						<ul>
							<li>Номер 1</li>
							<li>Номер 2</li>
							<li>Номер 3</li>
							<li>Номер 4</li> 
						</ul>
						<p>
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id,
							quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
							necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. 
						</p>

						<h4>Нумерованный список:</h4>
						<ol>
							<li>Номер 1</li>
							<li>Номер 2</li>
							<li>Номер 3</li>
							<li>Номер 4</li> 
						</ol>
						<p>
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id,
							quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
							necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. 
						</p>

						<div class="column-half">
							<div>
								<h4>Список с точками:</h4>
								<ul>
									<li>Номер 1</li>
									<li>Номер 2</li>
									<li>Номер 3
										<ul>
											<li>Номер 3.1</li>
											<li>Номер 3.2</li>
											<li>Номер 3.3
												<ul>
													<li>Номер 3.3.1</li>
													<li>>Номер 3.3.2</li>
												</ul>
											</li>
											<li>Номер 3.4</li>
											<li>Номер 3.5</li>
										</ul>
									</li>
									<li>Номер 4</li> 
									<li>Номер 5</li>
									<li>Номер 6</li>
									<li>Номер 7</li>
									<li>Номер 8</li> 
								</ul>
							</div>

							<div>
								<h4>Нумерованный список:</h4>
								<ol>
									<li>Номер 1</li>
									<li>Номер 2</li>
									<li>Номер 3</li>
									<li>Номер 4
										<ol>
											<li>Номер 4.1</li>
											<li>Номер 4.2</li>
											<li>Номер 4.3
												<ol>
													<li>Номер 4.3.1</li>
													<li>Номер 4.3.2</li>
													<li>Номер 4.3.3</li>
												</ol>
											</li>
											<li>Номер 4.4</li>
											<li>Номер 4.5</li>
										</ol>
									</li> 
									<li>Номер 5</li>
									<li>Номер 6</li>
									<li>Номер 7</li>
									<li>Номер 8</li> 
								</ol>
							</div>
						</div>

						<h4>Цитата</h4>
						<div class="column-half">
							<div class="italic-blockquote">
								<blockquote>
									<p>
										Lorem Ipsum is simply dummy text of the printing and 
										typesetting industry. Lorem Ipsum has been the 
										industry's standard dummy text ever since the 1500s, 
										when an unknown printer took a galley of type and 
										scrambled it to make a type specimen book. It has 
										survived not only five centuries, but also the leap 
										into electronic typesetting.

										— Andreus Volf, Paranoic, 1998
									</p>
								</blockquote>
							</div>

							<div class="italic-blockquote">
								<blockquote>
									<p>
										Lorem Ipsum is simply dummy text of the printing and 
										typesetting industry. Lorem Ipsum has been the 
										industry's standard dummy text ever since the 1500s, 
										when an unknown printer took a galley of type and 
										scrambled it to make a type specimen book. It has 
										survived not only five centuries, but also the leap 
										into electronic typesetting.

										— Andreus Volf, Paranoic, 1998
									</p>
								</blockquote>
							</div>
						</div>

						<blockquote>
							<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
								quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est.
							</p>
						</blockquote>

						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia. Mauris
							finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<h4>Выравнивание по левому краю</h4>
						<p>
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
							quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
							debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
						</p>
						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<h4>Выравнивание по центру</h4>
						<p style="text-align: center;">
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
							quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
							debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
						</p>
						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<h4>Выравнивание по правому краю</h4>
						<p style="text-align: right;">
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
							quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
							debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
						</p>
						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<h4>Выравнивание по ширине</h4>
						<p style="text-align: justify;">
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
							quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
							debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
						</p>
						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<h4>Текст курсив</h4>
						<p>
							<em>
								Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
								quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
								debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
							</em>
						</p>
						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<h4>Текст подчеркнутый</h4>
						<p>
							<span style="text-decoration: underline;">
								Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
								quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
								debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
							</span>
						</p>
						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<h4>Текст зачеркнутый</h4>
						<p>
							<span style="text-decoration: line-through;">
								Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
								quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
								debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
							</span>
						</p>

						<h4>Гиперссылка на главную</h4>
						<p>
							<a href="/">Et harum quidem rerum facilis</a> est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
							quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
							debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
						</p>

						<h4>Стилизованная таблица с рамкой на всю ширину</h4>

						<table style="width: 100%;" border="1">
							<tbody>
								<tr>
									<th>Amet animi asperiores</th>
									<th>Amet animi asperiores</th>
									<th>Amet animi asperiores</th>
									<th>Amet animi asperiores</th>
									<th>Amet animi asperiores</th>
								</tr>
								<tr>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
								</tr>
								<tr>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores&nbsp;Amet animi asperioresAmet animi asperioresAmet animi asperiores</td>
								</tr>
							</tbody>
						</table>

						<p>
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id,
							quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
							necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
						</p>

						<h4>Стилизованная таблица без рамки на всю ширину</h4>

						<table style="width: 100%;">
							<tbody>
								<tr>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
								</tr>
								<tr>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
								</tr>
								<tr>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores</td>
									<td>Amet animi asperiores&nbsp;Amet animi asperioresAmet animi asperioresAmet animi asperiores</td>
								</tr>
							</tbody>
						</table>

						<p>
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id,
							quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
							necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
						</p>

						<h4>Горизонтальная линия</h4>
						<hr>
						<p>
							Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id,
							quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
							necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
						</p>

						<h4>Буквицы</h4>
						<p class="cap-fill">
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
							when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap
							into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing. Lorem Ipsum has
							been the industry's standard dummy text ever since the 1500s, when an un dummy text ever since the 1500s, when an unknown printer took a galley of type and
							scrambled it to make a type specimen book.  It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially
							unchanged. It was popularised in the 1960s with the release of Letraset sheets containing  
						</p>

						<p class="cap">
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
							when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into
							electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
						</p>

						<hr>

						<div class="column-half">
							<p class="cap-fill">
								Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
								, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap
								into electronic typesetting, remaining essentially unchanged. 
							</p>

							<p class="cap">
								Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
								when an unknown printer took a galley of type and scrambled. 
							</p>
						</div>

						<h4>Цитата</h4>
						<div class="column-half">
							<p>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
								when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap
								into electronic typesetting, remaining essentially unchanged. 
							</p>
							<p>
								Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
								when an unknown printer took a galley of type and scrambled. 
							</p>
						</div>

						<p>
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
							when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into
							electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
						</p>

						<h4>Код</h4>
						For example,  <span><section></span>  should be wrapped as inline. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
						<code>
							<p>Sample text here...</p>
						</code>
						<p>
							Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an
							unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
							typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
						</p>

						<h4>Код</h4>
						<div class="column-half">
							<p>
								For example,  <span><section></span>  should be wrapped as inline. 
								</p>
							<pre>
						<p>Sample text here...</p>
					</pre>
						</div>

						<h4>Иконки</h4>

						<p><i class="icons uk-icon-exclamation-circle"></i> Lorem Ipsum is simply dummy text of the printing and.</p>
						<p><i class="icons uk-icon-certificate"></i> Typesetting industry. Lorem Ipsum has been the industry's.</p>
						<p><i class="icons uk-icon-database"></i> Standard dummy text ever since the 1500s, when an unknown.</p>
						<p><i class="icons uk-icon-file-text"></i> Printer took a galley of type and scrambled it to make a type.</p>
						<a href="#">...more icons</a>


						<h4>Оформление текстовых блоков</h4>
						<div class="leave-request">
							<div class="leave-request__content">
								<img src="assets/templates/market/img/update/customer-service.svg" alt="">
								<div class="leave-request__info">
									<div class="leave-request__title">
										Остались вопросы?
									</div>
									<div class="leave-request__txt">
										Оставьте заявку и мы ответим на все вопросы
									</div>
								</div>
							</div>

							<a href="" class="leave-request__link">Оставить заявку</a>
						</div>

						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<div class="leave-request">
							<div class="leave-request__content">
								<div class="leave-request__info">
									<div class="leave-request__title">
										Остались вопросы?
									</div>
									<div class="leave-request__txt">
										Оставьте заявку и мы ответим на все вопросы
									</div>
								</div>
							</div>

							<a href="" class="leave-request__link">Оставить заявку</a>
						</div>

						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<div class="leave-request">
							<div class="leave-request__content">
								<div class="leave-request__info">
									<div class="leave-request__title">
										Остались вопросы?
									</div>
									<div class="leave-request__txt">
										Оставьте заявку и мы ответим на все вопросы
									</div>
								</div>
							</div>
						</div>

						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<div class="card-question">
							<div class="card-question_slogan">
								Наши специалисты ответят на любой
								интересующий вопрос по данному товару
							</div>
							<a href="#callback" data-uk-modal="" class="card-question__btn">задать вопрос</a>
						</div>

						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>

						<div class="progect-page-action">
							<div class="progect-page-action__label">
								Акция
							</div>

							<strong>Домен в подарок!</strong>

							<div class="progect-page-action__date">с 01 апреля по 30 августа</div>

							<p>При заказе услуг по разработке интернет-магазина мы предоставляем домен в зоне .ru на 1 год!</p>
						</div>

						<p>
							Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
							Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
							Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
						</p>
						</div>

						<div class="catalog-back">
							<a href="#" class="back-catalog">
								<svg id="back-catalog__svg" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 35 35">
									<circle class="back-catalog__svg-cls-1" cx="17.5" cy="17.5" r="16.5" />
									<polyline class="back-catalog__svg-cls-2" points="20.25 23 14.75 17.5 20.25 12" />
								</svg>
								В каталог
							</a>


							<div class="main-first-info__share">
								Поделиться
								<div class="main-first-info__share-btn">
									<div class="ya-share2" data-services="vkontakte,facebook,odnoklassniki,moimir,gplus,twitter,linkedin,viber,whatsapp,skype,telegram"></div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="container">
				<div class="watched">
					<h4>Вы смотрели:</h4>

					<div class="watched-wrap">
						<div class="watched-el">
							<a href="#">
								<img src="assets/templates/market/img/w1.jpg" alt="">
							</a>
							<div class="watched-el__tooltip">
								Default tooltip<br>
								Вторая строка
							</div>
						</div>

						<div class="watched-el">
							<a href="#">
								<img src="assets/templates/market/img/w2.jpg" alt="">
							</a>
							<div class="watched-el__tooltip">
								Default tooltip<br>
								Вторая строка
							</div>
						</div>

						<div class="watched-el">
							<a href="#">
								<img src="assets/templates/market/img/w3.jpg" alt="">
							</a>
							<div class="watched-el__tooltip">
								Default tooltip 2<br>
								Вторая строка
							</div>
						</div>

						<div class="watched-el">
							<a href="#">
								<img src="assets/templates/market/img/w4.jpg" alt="">
							</a>
							<div class="watched-el__tooltip">
								Default tooltip 3<br>
								Вторая строка
							</div>
						</div>

						<div class="watched-el">
							<a href="#">
								<img src="assets/templates/market/img/w5.jpg" alt="">
							</a>
							<div class="watched-el__tooltip">
								Default tooltip 4<br>
								Вторая строка
							</div>
						</div>

						<div class="watched-el">

						</div>

						<div class="watched-el">

						</div>

						<div class="watched-el">

						</div>

						<div class="watched-el">

						</div>

						<div class="watched-el">

						</div>

						<div class="watched-el">

						</div>

						<div class="watched-el">

						</div>

						<div class="watched-el">

						</div>

						<div class="watched-el">

						</div>
					</div>

				</div>
			</div>

			<footer class="footer [+footer_add_class+]">
				{{footer}}
			</footer>
			<div class="modal">
				{{modal_forms_block}}
			</div>
			<script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
			<script src="//yastatic.net/share2/share.js"></script>

			<!-- скрипт таймера -->
			<script>
				// http://lexxus.github.io/jq-timeTo/

				var endAction = $('span.active_to').text();

				$('#countdown').timeTo({
					timeTo: new Date(new Date(endAction)),
					//displayDays: 3,
					captionSize: 11,
					fontFamily: '',
					fontSize: 14,
					lang: 'ru',
					displayCaptions: true,

				});

			</script>
			</body>

		</html>
