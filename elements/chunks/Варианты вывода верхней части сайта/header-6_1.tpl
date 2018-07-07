name:header-6_1
description:Цветное меню (6.1)
======
<div class="header-top-var-6_1">

	<div class="top-bar">
		<div class="container top-bar-flex">
			{{top-menu}}
			[[ddGetMultipleField? &inputString_docField=`social_buttons` &inputString_docId=`1` &outerTpl=`social_buttons_header_outer_tpl` &rowTpl=`social_buttons_header_tpl`]]
		</div>
	</div>

	<div class="center-bar">
		<div class="flex-center-bar container">

			<div class="phone flex-block">
				<img src="assets/templates/market/img/update/phone-header-2.svg" alt=""/>

				<div>

					<p><a href="#callback" data-uk-modal >заказать обратный звонок</a></p>

					<div class="header-phone-wrap">
						<div class="header__phone">[[GetPageParams? &iddoc=`1` &field=`header_phones_first_phone`]]</div>
						[[ddGetMultipleField? &inputString_docField=`header_phones_hidden_block` &inputString_docId=`1` &outerTpl=`@CODE:<div class="header-phones">[+result+]</div>` &rowTpl=`header_phones_hidden_block_tpl`]]
					</div>
				</div>
			</div>

			[[if? &is=`[*logo@1*]:empty` &then=`@TPL:logo_header_empty` &else=`@TPL:logo_header`]]

			<div class="search-basket-wrap">
				<div class="js-search-button"></div>
				<!--@-Корзина шопкипера-@-->
				<!--@-[!-basket_visible_and_type!]-@-->

				<!--@-Корзина шопкипера-@-->
				[!basket_visible_and_type!]
			</div>

			[[ddGetMultipleField? &inputString_docField=`header_mobile_contacts` &inputString_docId=`1` &rowTpl=`header_mobile_contacts_tpl`]]
		</div>
	</div>

	<!--@- Скролл-меню -@-->
	[[header_scroll_select_load]]
	<!--@- Конец скролл-меню -@-->

	<!-- .first-active - другой вид первого пункта меню -->
	<div class="container-wrap">
		<div class="container">
			<!--@- {{main_menu_header}}-@-->

			<div class="wrap-menu">

				<div class='mobile-menu__callback'>
					<img src="assets/templates/market/img/update/callback-mobile.svg" alt="">

					<div class="mobile-menu__callback-hidden-wrap">
						<div class="mobile-menu__callback-hidden">
							<a href="#callback" data-uk-modal="" class="mobile-menu__callback-link view-more">Обратная связь</a>
						</div>
					</div>
				</div>

				<div class="mobile-menu__header-logo">
					[[if? &is=`[*logo@1*]:empty` &then=`@TPL:logo_header_mobile_empty` &else=`@TPL:logo_header_mobile`]]
				</div>

				<nav class="desktop-menu uk-hidden-small">
					[[ddGetMultipleField? &inputString_docField=`header_menu` &inputString_docId=`1` &rowTpl=`header_menu_level1_tpl` &outerTpl=`@CODE:<ul class="menu flex" id="menu-flex">[+result+]</ul>`]]
				</nav>
				<nav class="mobile-menu uk-visible-small">
					<span class="button-mobile-menu"><span class="button-mobile-menu-inner"></span></span>

					<div class="mobile-menu-inner">
						<form action="[~97~]" method="GET" class="mobile-menu__search">
							<input type="text" class="mobile-menu__search-input" placeholder="Поиск..." name="s">
							<input type="submit"  class="mobile-menu__search-submit" value="">
						</form>

						[[DLMenu? &parents=`0` &maxDepth=`3` &filters=`AND(content:template:notin:13,19,22,24)` &outerTpl=`@CODE:<ul [+classes+]>[+wrap+]</ul>` &rowTpl=`@CODE:<li [+classes+]><a href="[+url+]" title="[+title+]">[+title+]</a>[+wrap+]</li>` &parentRowTpl=`mobile_dlmenu_parentRowTpl` &hereClass=`active` &activeClass=`active` &outerClass=`` &innerClass=`menu-sub`]]

						[[ddGetMultipleField? &inputString_docField=`social_buttons` &inputString_docId=`1` &outerTpl=`social_buttons_header_outer_tpl` &rowTpl=`social_buttons_header_tpl`]]

						<div class="mobile-menu__copyrigt">
							[[this_year]] &copy; Все права защищены
						</div>
						<div class="mobile-menu__sitemap">
							<img src="assets/templates/market/img/update/mobile-sitemap.svg" alt="Ссылка на карту сайта"> <a href="[~95~]"><span>Карта сайта</span></a>
						</div>
						<div class="mobile-menu__dev">
							Разработка готового решения <a href="http://webcompany.by/" target="_blank"><img src="assets/templates/market/img/update/webcompany-gray.png" alt=""></a>
						</div>
					</div>
				</nav>
				<div class='search-wrap'>
					<div id="button-search-top"></div>
					<!--@-Корзина шопкипера
                    [!basket_visible_and_type!]-@-->
					<!--@-[[-basket_visible_from_header? &id_param_val=`99` &tv_param_val_name=`site_header_config` &session_param_name=`site_header_config` &params_array=`header_default,header-1_1,header-1_2,header-1_3,header-1_4`]]-@-->
				</div>
			</div>
		</div>
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

</div>