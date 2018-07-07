name:header-3_1
description:Светлый заголовок сайта (3.1)
======
<div class="header-top-var-3_1">

	<div class="top-bar">
		<div class="container top-bar-flex">
			{{top-menu}}
			[[ddGetMultipleField? &inputString_docField=`social_buttons` &inputString_docId=`1` &outerTpl=`social_buttons_header_outer_tpl` &rowTpl=`social_buttons_header_tpl`]]


			<div class="header-phone-wrap">
				<div class="header__phone">[[GetPageParams? &iddoc=`1` &field=`header_phones_first_phone`]]</div>
				[[ddGetMultipleField? &inputString_docField=`header_phones_hidden_block` &inputString_docId=`1` &outerTpl=`@CODE:<div class="header-phones">[+result+]</div>` &rowTpl=`header_phones_hidden_block_tpl`]]
			</div>

			<a href="#callback" data-uk-modal >заказать обратный звонок</a>

		</div>
	</div>

	<div class="center-bar">
		<div class="flex-center-bar container">

			[[if? &is=`[*logo@1*]:empty` &then=`@TPL:logo_header_empty` &else=`@TPL:logo_header`]]

			<nav class="desktop-menu uk-hidden-small">
				[[ddGetMultipleField? &inputString_docField=`header_menu` &inputString_docId=`1` &rowTpl=`header_menu_level1_tpl` &outerTpl=`@CODE:<ul class="menu [+class_dectop+] flex" id="menu-flex">[+result+]</ul>`]]
			</nav>

			<div class="center_right-bar">
				<form class="center-bar-search" action="[~97~]">
					<input type="text" placeholder="Поиск..." required pattern='[A-Za-zА-Яа-яЁё-0-9]{3,50}' name='s' class="center-bar-search__input"/>
					<button type="submit" class="center-bar-search__submit"><img src="assets/templates/market/img/update/magnifier-header-2.svg" alt="" /></button>
				</form>

				<!--@-Корзина шопкипера-@-->
				[!basket_visible_and_type!]
			</div>
		</div>
	</div>

	<!--@- Скролл-меню -@-->
	[[header_scroll_select_load]]
	<!--@- Конец скролл-меню -@-->
	<!--@-
	<div class="container-wrap">
		<div class="container">
			{{main_menu_header}}
		</div>
	</div>
	-@-->
</div>