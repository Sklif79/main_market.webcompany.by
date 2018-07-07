name:header_scroll_default
description:Стандартное скролл-меню
======
<!--@- скролл меню, класс .header-scroll обязательный,  для активного меню добавить .active, header-variable-1 класс текущего скролл-меню, у остальных будет другой -@-->

<div class="header-variable-1 header-scroll active">
	<div class="container">
		[[if? &is=`[*logo@1*]:empty` &then=`@TPL:logo_header_scroll_empty` &else=`@TPL:logo_header_scroll`]]

		<div class="header-scroll-main-menu">
			<nav class="desktop-menu uk-hidden-small">
				[[DLMenu? 
				&parents=`0` 
				&maxDepth=`1` 
				&filters=`AND(content:id:notin:1;content:template:notin:13,19,22,24)` 
				&outerTpl=`@CODE:<ul [+classes+] id="menu-flex-scroll">[+wrap+]</ul>` 
				&rowTpl=`scroll_dlmenu_rowTpl` 
				&hereClass=`active` 
				&activeClass=`active` 
				&outerClass=`menu flex` 
				&innerClass=`menu-sub`
				]]
			</nav>
			<nav class="mobile-menu uk-visible-small">
				<span class="button-mobile-menu"><i class="uk-icon-bars"></i></span>
				[[DLMenu? 
				&parents=`0` 
				&maxDepth=`6` 
				&filters=`AND(content:template:notin:13,19,22,24)` 
				&outerTpl=`@CODE:<ul [+classes+]>[+wrap+]</ul>` 
				&rowTpl=`@CODE:<li [+classes+]><a href="[+url+]" title="[+title+]">[+title+]</a>[+wrap+]</li>` 
				&parentRowTpl=`@CODE:<li>
				<div class="open-div-mobile"> 
					<a href="[+url+]" title="[+title+]">[+title+]</a>
					<span class="mob-button"><i class="uk-icon-angle-down"></i></span>
				</div>
				[+wrap+]
				</li>`
				&hereClass=`active` 
				&activeClass=`active` 
				&outerClass=`` 
				&innerClass=`menu-sub`]]
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
			<a href='[~140~]' id="butOrder"></a>
		</div>
		`]]


	</div>
</div>

<!--@- конец скролл меню -@-->