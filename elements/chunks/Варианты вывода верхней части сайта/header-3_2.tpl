name:header-3_2
description:Заглавная часть цветная (3.2)
======
<div class="header-top-var-3_2">

	<div class="top-bar">
		<div class="container top-bar-flex">
			{{top-menu}}
			[[ddGetMultipleField? &inputString_docField=`social_buttons` &inputString_docId=`1` &outerTpl=`social_buttons_header_outer_tpl` &rowTpl=`social_buttons_header_tpl`]]

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
					<button type="submit" class="center-bar-search__submit"><img src="assets/templates/market/img/update/magnifier-header-1.svg" alt="" /></button>
				</form>
				<!--@-Корзина шопкипера-@-->
				<!--@-[!-basket_visible_and_type!]-@-->

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