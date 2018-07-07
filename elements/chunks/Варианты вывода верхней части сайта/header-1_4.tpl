name:header-1_4
description:Цветная основная полоса (1.4)
======
<div class="header-top-var-1_4">
	<div class="top-bar">
		<div class="container top-bar-flex">
			{{top-menu}}
			[[ddGetMultipleField? &inputString_docField=`social_buttons` &inputString_docId=`1` &outerTpl=`social_buttons_header_outer_tpl` &rowTpl=`social_buttons_header_tpl`]]
		</div>
	</div>


	<div class="center-bar">
		<div class="flex-center-bar container">
			[[if? &is=`[*logo@1*]:empty` &then=`@TPL:logo_header_empty` &else=`@TPL:logo_header`]]
			[[ddGetMultipleField? &inputString_docField=`header_contacts_email_address` &inputString_docId=`1` &rowTpl=`header_contacts_email_address_var2_tpl`]]
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
			[[ddGetMultipleField? &inputString_docField=`header_mobile_contacts` &inputString_docId=`1` &rowTpl=`header_mobile_contacts_tpl`]]
		</div>
	</div>

	<!--@- Скролл-меню -@-->
	[[header_scroll_select_load]]
	<!--@- Конец скролл-меню -@-->

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
</div>