name:header_scroll_v2
description:Скролл-меню со скрытым меню
======
<!--@- скролл меню, класс .header-scroll обязательный,  для активного меню добавить .active, header-variable-2 класс текущего скролл-меню, у остальных будет другой -@-->
<div class="header-variable-2 header-scroll active">
	<div class="container">
		<div class="header-top-left-block">
			[[if? &is=`[*logo@1*]:empty` &then=`@TPL:logo_header_scroll_empty` &else=`@TPL:logo_header_scroll`]]

			<nav class="desktop-menu header-variable-2__nav">
				[[ddGetMultipleField? &inputString_docField=`header_menu` &inputString_docId=`1` &rowTpl=`header_menu_level1_tpl` &outerTpl=`@CODE:<ul class="menu [+class_dectop+] flex">[+result+]</ul>`]]
			</nav>
		</div>
		<div class="header-top-right-block">
			<div class="header-scroll__search-btn"></div>
			[[if? &is=`[*id*]:!=:140` &then=`
			<div class="header-basket">
				<div class="header-basket__count"></div>
				<a href='[~140~]' >&nbsp;</a>
			</div>
			`]]
		</div>


	</div>
</div>
<!--@- конец скролл меню -@-->