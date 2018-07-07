name:Страница с другим скрол-меню (верстка)
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
					[[if? &is=`[*logo@1*]:empty` &then=`@TPL:logo_header_empty` &else=`@TPL:logo_header`]]
					[[ddGetMultipleField? &inputString_docField=`header_contacts_email_address` &inputString_docId=`1` &rowTpl=`header_contacts_email_address_tpl`]]
					<div class="phone flex-block">
						<svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 30 30" xml:space="preserve">
				<style type="text/css">
					.st0{fill:currentColor;}
				</style>
				<g>
					<g>
						<path class="st0" d="M22.1,19.4c0,0.2,0,0.5-0.2,0.6l-2.1,2.1c-0.1,0.1-0.2,0.2-0.4,0.3c-0.2,0.1-0.3,0.1-0.5,0.1c0,0,0,0-0.1,0
											 c-0.1,0-0.1,0-0.2,0c-0.2,0-0.5,0-1-0.1c-0.5-0.1-1-0.2-1.7-0.5c-0.7-0.3-1.4-0.7-2.2-1.2c-0.8-0.5-1.7-1.3-2.7-2.2
											 c-0.7-0.7-1.4-1.4-1.9-2.1c-0.5-0.7-0.9-1.3-1.2-1.9c-0.3-0.6-0.5-1.1-0.7-1.6c-0.1-0.5-0.3-0.9-0.3-1.2C7,11.4,7,11.1,7,10.9
											 c0-0.2,0-0.3,0-0.3c0-0.1,0.1-0.3,0.1-0.5C7.2,10,7.3,9.9,7.4,9.8l2.1-2.1c0.1-0.1,0.3-0.2,0.5-0.2c0.1,0,0.3,0,0.4,0.1
											 c0.1,0.1,0.2,0.2,0.3,0.3l1.7,3.2c0.1,0.2,0.1,0.4,0.1,0.6c0,0.2-0.1,0.4-0.3,0.5L11.4,13c0,0,0,0.1-0.1,0.1s0,0.1,0,0.1
											 c0,0.2,0.1,0.5,0.3,0.8c0.1,0.3,0.3,0.6,0.6,0.9c0.3,0.4,0.6,0.8,1.1,1.3c0.5,0.5,0.9,0.9,1.3,1.1c0.4,0.3,0.7,0.5,0.9,0.6
											 c0.3,0.1,0.4,0.2,0.6,0.2l0.2,0c0,0,0.1,0,0.1,0c0,0,0.1,0,0.1-0.1l0.9-0.9c0.2-0.2,0.4-0.3,0.7-0.3c0.2,0,0.3,0,0.4,0.1h0
											 l3.1,1.8C21.9,19,22.1,19.1,22.1,19.4z"></path>
					</g>
				</g>
				<g>
					<path class="st0" d="M15,2c7.2,0,13,5.8,13,13s-5.8,13-13,13S2,22.2,2,15S7.8,2,15,2 M15,0C6.7,0,0,6.7,0,15s6.7,15,15,15
										 s15-6.7,15-15S23.3,0,15,0L15,0z"></path>
				</g>
			</svg>

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
			{{header_scroll_v2}}
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
	</body>
</html>