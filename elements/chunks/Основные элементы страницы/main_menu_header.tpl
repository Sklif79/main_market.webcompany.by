name:main_menu_header
description:Основное меню в верхней части сайта
======
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
		[[ddGetMultipleField? &inputString_docField=`header_menu` &inputString_docId=`1` &rowTpl=`header_menu_level1_tpl` &outerTpl=`@CODE:<ul class="menu [+class_dectop+] flex" id="menu-flex">[+result+]</ul>`]]
	</nav>
	<nav class="mobile-menu uk-visible-small">
		<span class="button-mobile-menu"><span class="button-mobile-menu-inner"></span></span>

		<div class="mobile-menu-inner">
			<form action="[~97~]" method="GET" class="mobile-menu__search">
				<input type="text" class="mobile-menu__search-input" placeholder="Поиск..." name="s">
				<input type="submit"  class="mobile-menu__search-submit" value="">
			</form>	
			
			<!--@-Мобильное меню-@-->
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
		<!--@-Корзина шопкипера-@-->
		[!basket_visible_and_type!]
	</div>
</div>