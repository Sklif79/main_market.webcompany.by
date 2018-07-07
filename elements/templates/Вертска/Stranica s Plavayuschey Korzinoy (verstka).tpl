name:Страница с Плавающей Корзиной (верстка)
description:
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
	</head>
	<body>

		<header class="header [+noshadow_class+]">
			<div class="top-bar">
				<div class="container top-bar-flex">
					{{top-menu}}
					[[ddGetMultipleField? &inputString_docField=`social_buttons` &inputString_docId=`1` &outerTpl=`social_buttons_header_outer_tpl` &rowTpl=`social_buttons_header_tpl`]]
				</div>
			</div>


			<div class="center-bar">
				<div class="flex-center-bar container">
					[[ddGetMultipleField? &inputString_docField=`logo` &inputString_docId=`1` &rowTpl=`logo_header_tpl`]]
					[[ddGetMultipleField? &inputString_docField=`header_contacts_email_address` &inputString_docId=`1` &rowTpl=`header_contacts_email_address_tpl`]]
					<div class="phone flex-block">
						<img src="assets/templates/market/img/sprite/phone.svg" alt=""/>

						<div>

							<p><a href="#callback" data-uk-modal >заказать обратный звонок</a></p>

							<div class="header-phone-wrap">
								<div class="header__phone">[[GetPageParams? &iddoc=`1` &field=`header_phones_first_phone`]]</div>
								[[ddGetMultipleField? &inputString_docField=`header_phones_hidden_block` &inputString_docId=`1` &outerTpl=`@CODE:<div class="header-phones">[+result+]</div>` &rowTpl=`header_phones_hidden_block_tpl`]]
							</div>

						</div>
					</div>
					[[ddGetMultipleField? &inputString_docField=`header_mobile_contacts` &inputString_docId=`1` &rowTpl=`header_mobile_contacts_tpl`]]
				</div>
			</div>


			<!-- скролл меню, класс .header-scroll обязательный,  для активного меню добавить .active, header-variable-1 класс текущего скролл-меню, у остальных будет другой -->

			<div class="header-variable-1 header-scroll active">
				<div class="container">
					[[ddGetMultipleField? &inputString_docField=`logo` &inputString_docId=`1` &rowTpl=`logo_header_scroll_tpl`]]

					<div class="header-scroll-main-menu">
						<nav class="desktop-menu uk-hidden-small">
							[[Wayfinder? &startId=`0` &level=`1` &excludeDocs=`1` &outerTpl=`scroll_menu_outerTpl` &rowTpl=`scroll_menu_rowTpl` &levelClass=`level` &where=`NOT template IN (13,19,22,24)`]]
						</nav>
						<nav class="mobile-menu uk-visible-small">
							<span class="button-mobile-menu"><i class="uk-icon-bars"></i></span>
							[[Wayfinder? &startId=`0` &level=`6` &parentRowTpl=`mobile_menu_parentRowTpl` &levelClass=`level` &innerTpl=`main_menu_header_innerTpl` &where=`NOT template IN (13,19,22,24)`]]
						</nav>			
					</div>

					<form class="search-panel" id=""  action="[~97~]">
						<div class="search-panel__wrap">
							<input type="text" placeholder="Поиск..." required pattern='[A-Za-zА-Яа-яЁё-0-9]{3,50}' name='s'/>
							<input type="submit" value=''>
						</div>
					</form>		

					<div class="header-phone-wrap">
						<div class="header__phone">[[GetPageParams? &iddoc=`1` &field=`header_phones_first_phone`]]</div>
						[[ddGetMultipleField? &inputString_docField=`header_phones_hidden_block` &inputString_docId=`1` &outerTpl=`@CODE:<div class="header-phones">[+result+]</div>` &rowTpl=`header_phones_hidden_block_tpl`]]
					</div>

					<a href="#callback" data-uk-modal class='header-variable__lnk'>обратный звонок</a>

					[[if? &is=`[*id*]:!=:140` &then=`
					<div class="header-basket">
						<div class="header-basket__count"></div>
						<a href='[~140~]' id="butOrder">&nbsp;</a>
					</div>
					`]]		
				</div>
			</div>
			<!-- конец скролл меню -->



			<div class="container">
				{{main_menu_header}}
			</div>
			<form class="search-panel" id="search-panel-top"  action="[~97~]">
				<div class="container flex-search-panel">
					<div class="flex-search__input">
						<input type="text" placeholder="Поиск..." required pattern='[A-Za-zА-Яа-яЁё-0-9]{3,50}' name='s'/>
						<button type="submit"><img src="assets/templates/market/img/search_icon .svg" alt=""/></button>
					</div>		
					<span class="close">
						<img src="assets/templates/market/img/search-close.svg" alt=""/>
					</span>
				</div>
			</form>
		</header>

		<!-- --@ корзина по ховеру под корзиной в header @-- -->
		{{basket_under_header}} [[breadcrumbs_select_load]]


		<div class="container second-page">
			<div class="uk-grid">
				{{left_bar}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					<div>
						[*content*]
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
		<!--@-Плавающая корзина-@-->
		{{-side_basket}}
		
		<!--@- боковая корзина, добавить enabled для включения и empty если пустая -@-->
		[!Shopkeeper? &cartType=`full` &priceTV=`new_price` &orderFormPage=`140` &changePrice=`0` &noJQuery=`1` &noJavaScript=`0`  &cartTpl=`Shopkeeper_side_basket_cartTpl` &cartRowTpl=`Shopkeeper_side_basket_RowTpl` &noCounter=`1`  &counterField=`1` &flyToCart=`image` &hideOn=`140`!]
		<!--@-<div class="side-basket enabled">
			<div class="side-basket__label">
				<div class="side-basket__count"></div>
			</div>
			<div class="side-basket__table-wrap">
				<div class="side-basket__title-wrap">
					<div class="side-basket__title">Корзина</div>
					<div class="side-basket__clear">Очистить корзину</div>
				</div>
				<table class="side-basket__table">
					<thead>
						<tr>
							<th></th>
							<th>Название</th>
							<th>Цена</th>
							<th>Кол-во</th>
							<th>Итого</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<a href="#" class="side-basket__img">
									<img src="assets/cache/images/product/juicer/1-186x186-0ed.png" alt="Kitfort KT-1101">
								</a>
							</td>
							<td>
								<a href="" class="side-basket__lnk">Дверь алюминиевая с стеклянными вставками «Летний бриз» длинное Дверь алюминиевая с</a>
							</td>
							<td>
								<div class="side-basket__price">22.50</div>
							</td>
							<td>

								<form class="count-form" method="post" action="[~[+id+]~]" data-trigger="spinner">
									<div class="count-block">
										<button type="button" class="count__form-btn" data-spin="down"></button>
										<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
										<button type="button" class="count__form-btn" data-spin="up"></button>
									</div>
									<input type="submit" class="side-basket__submit" value="">				
								</form>

							</td>
							<td>
								<div class="side-basket__total-price">
									22.50
								</div>
							</td>
							<td>
								<div class="side-basket__close"></div>
							</td>
						</tr>

						<tr>
							<td>
								<a href="#" class="side-basket__img">
									<img src="assets/cache/images/product/juicer/1-186x186-0ed.png" alt="Kitfort KT-1101">
								</a>
							</td>
							<td>
								<a href="" class="side-basket__lnk">Дверь алюминиевая с стеклянными вставками</a>
							</td>
							<td>
								<div class="side-basket__price">22.50</div>
							</td>
							<td>

								<form class="count-form" method="post" action="[~[+id+]~]" data-trigger="spinner">
									<div class="count-block">
										<button type="button" class="count__form-btn" data-spin="down"></button>
										<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
										<button type="button" class="count__form-btn" data-spin="up"></button>
									</div>
									<input type="submit" class="side-basket__submit" value="">				
								</form>

							</td>
							<td>
								<div class="side-basket__total-price">
									22.50
								</div>
							</td>
							<td>
								<div class="side-basket__close"></div>
							</td>
						</tr>

						<tr>
							<td>
								<a href="#" class="side-basket__img">
									<img src="assets/cache/images/product/juicer/1-186x186-0ed.png" alt="Kitfort KT-1101">
								</a>
							</td>
							<td>
								<a href="" class="side-basket__lnk">Дверь алюминиевая с стеклянными вставками</a>
							</td>
							<td>
								<div class="side-basket__price">22.50</div>
							</td>
							<td>

								<form class="count-form" method="post" action="[~[+id+]~]" data-trigger="spinner">
									<div class="count-block">
										<button type="button" class="count__form-btn" data-spin="down"></button>
										<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
										<button type="button" class="count__form-btn" data-spin="up"></button>
									</div>
									<input type="submit" class="side-basket__submit" value="">				
								</form>

							</td>
							<td>
								<div class="side-basket__total-price">
									22.50
								</div>
							</td>
							<td>
								<div class="side-basket__close"></div>
							</td>
						</tr>

						<tr>
							<td>
								<a href="#" class="side-basket__img">
									<img src="assets/cache/images/product/juicer/1-186x186-0ed.png" alt="Kitfort KT-1101">
								</a>
							</td>
							<td>
								<a href="" class="side-basket__lnk">Дверь алюминиевая с стеклянными вставками</a>
							</td>
							<td>
								<div class="side-basket__price">22.50</div>
							</td>
							<td>

								<form class="count-form" method="post" action="[~[+id+]~]" data-trigger="spinner">
									<div class="count-block">
										<button type="button" class="count__form-btn" data-spin="down"></button>
										<input type="text" name="shk-count" class="count__form-el count__form-val" value="1" data-rule="quantity">
										<button type="button" class="count__form-btn" data-spin="up"></button>
									</div>
									<input type="submit" class="side-basket__submit" value="">				
								</form>

							</td>
							<td>
								<div class="side-basket__total-price">
									22.50
								</div>
							</td>
							<td>
								<div class="side-basket__close"></div>
							</td>
						</tr>
					</tbody>
				</table>
				<div class="side-basket-buttons">
					<a href="" class="side-basket__continue">Продолжить покупки</a>
					<a href="" class="side-basket__go-to-basket">Перейти в корзину</a>
					<a href="" class="side-basket__fast-order">Быстрый заказ</a>
				</div>
			</div>-@-->
			
			<!--@- контейнер пустой корзины -@-->
			<!--@-<div class="side-basket__empty">
				<div class="side-basket__title">Корзина пуста</div>
				<p>Перейдите в каталог и закажите интересующий вас товар!</p>
				<a href="" class="side-basket__go-to-basket">Перейти в каталог</a>
			</div>-@-->
			<!--@- /боковая корзина -@-->

		</div>
	</body>
</html>