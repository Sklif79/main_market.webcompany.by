name:header2
description:Верхняя (заглавная) часть страницы - Варианты Шапок
======
<div class="header-top-var-1">
	<div class="center-bar">
		<div class="flex-center-bar container">
			<form class="center-bar-search" action="">
				<input type="text" placeholder="Поиск..." required pattern='[A-Za-zА-Яа-яЁё-0-9]{3,50}' name='s' class="center-bar-search__input"/>
				<button type="submit" class="center-bar-search__submit"><img src="assets/templates/market/img/update/magnifier-header-1.svg" alt="" /></button>
			</form>


			[[if? &is=`[*logo@1*]:empty` &then=`@TPL:logo_header_empty` &else=`@TPL:logo_header`]]

			<div class="phone flex-block">
				<img src="assets/templates/market/img/update/phone-header-1.svg" alt=""/>

				<div>

					<p><a href="#callback" data-uk-modal >заказать обратный звонок</a></p>

					<div class="header-phone-wrap">
						<div class="header__phone">[[GetPageParams? &iddoc=`1` &field=`header_phones_first_phone`]]</div>
						[[ddGetMultipleField? &inputString_docField=`header_phones_hidden_block` &inputString_docId=`1` &outerTpl=`@CODE:<div class="header-phones">[+result+]</div>` &rowTpl=`header_phones_hidden_block_tpl`]]
					</div>
				</div>
				[![!shop_sheck!]Shopkeeper? &cartType=`small` &priceTV=`new_price` &orderFormPage=`140` &changePrice=`0` &noJQuery=`1` &noJavaScript=`0`  &cartTpl=`Shopkeeper_cartTpl2` &noCounter=`1`  &counterField=`1` &flyToCart=`image` &hideOn=`140`!]
			</div>
			[[ddGetMultipleField? &inputString_docField=`header_mobile_contacts` &inputString_docId=`1` &rowTpl=`header_mobile_contacts_tpl`]]
		</div>
	</div>


	<!-- скролл меню, класс .header-scroll обязательный,  для активного меню добавить .active, header-variable-1 класс текущего скролл-меню, у остальных будет другой -->
	<div class="header-variable-1 header-scroll active">
		<div class="container">

			<div class="logo">
				        <span class="logo-svg-wrap">
            <svg width="189" height="50" viewBox="0 0 189 50" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                <g id="Canvas__logo-new">
                    <g id="Group2__logo-new">
                        <g id="logo__logo-new">
                            <g id="Ellipse4__logo-new">
                                <path d="M 46.3972 23C 46.3972 35.7025 36.0108 46 23.1986 46C 10.3864 46 0 35.7025 0 23C 0 10.2975 10.3864 0 23.1986 0C 36.0108 0 46.3972 10.2975 46.3972 23Z"/>
                            </g>
                            <g id="Rectangle42__logo-new">
                                <path d="M 0 0L 24.1265 0L 24.1265 23.92L 0 23.92L 0 0Z" transform="translate(11.1348 11.04)" fill="white" fill-opacity="0.5"/>
                            </g>
                            <g id="Rectangle42_2__logo-new">
                                <path d="M 0 0L 24.0235 0L 24.0235 24.0235L 0 24.0235L 0 0Z" transform="matrix(0.71014 -0.704061 0.71014 0.704061 6.14062 23)" fill="white" fill-opacity="0.5"/>
                            </g>
                            <g id="Rectangle423_3__logo-new">
                                <g id="Vector__logo-new">
                                    <path d="M 15.99 17.34L 12.74 17.34L 12.74 2.47L 7.99999 2.47C 7.88666 4.64334 7.73001 6.52667 7.53001 8.12C 7.36738 9.48661 7.1236 10.8423 6.8 12.18C 6.57137 13.1218 6.23586 14.0344 5.8 14.9C 5.50271 15.5093 5.09981 16.0612 4.60999 16.53C 4.2136 16.8968 3.73793 17.1671 3.21999 17.32C 2.71213 17.4614 2.18718 17.5321 1.66 17.53C 1.23391 17.5497 0.80764 17.4956 0.400002 17.37C 0.133335 17.2633 -7.32422e-06 17.11 -7.32422e-06 16.91L -7.32422e-06 14.91L 0.920006 14.91C 1.13196 14.9102 1.34325 14.8867 1.55 14.84C 1.78259 14.7824 2.00059 14.6768 2.19 14.53C 2.43262 14.3389 2.64211 14.1092 2.81001 13.85C 3.05318 13.4781 3.25124 13.0787 3.4 12.66C 3.61801 12.0593 3.79508 11.4446 3.93 10.82C 4.09667 10.0933 4.24334 9.21667 4.37 8.19001C 4.49667 7.16334 4.61333 5.97666 4.71999 4.62999C 4.81999 3.29666 4.89333 1.75334 4.94 3.66211e-06L 15.94 3.66211e-06L 15.99 17.34Z" transform="translate(57.1797 9.21069)"/>
                                </g>
                                <g id="Vector_2__logo-new">
                                    <path d="M 17.5768 8.87069C 17.588 10.0763 17.3744 11.2734 16.9468 12.4007C 16.5494 13.448 15.9439 14.4039 15.1668 15.2107C 14.3818 16.0128 13.4385 16.6428 12.3968 17.0607C 10.083 17.9521 7.52059 17.9521 5.20681 17.0607C 4.16252 16.6422 3.21604 16.0124 2.42681 15.2107C 1.64679 14.4043 1.03791 13.4485 0.636803 12.4007C -0.212276 10.1205 -0.212276 7.61087 0.636803 5.33068C 1.03791 4.2829 1.64679 3.32708 2.42681 2.52068C 3.21604 1.71897 4.16252 1.08911 5.20681 0.670674C 6.3478 0.213539 7.56773 -0.0141348 8.79681 0.000675774C 9.63336 -0.00292179 10.4669 0.101267 11.2768 0.310673C 12.0251 0.5011 12.7448 0.790308 13.4168 1.17067C 14.0611 1.53963 14.6502 1.99746 15.1668 2.53067C 15.6815 3.06241 16.1222 3.66114 16.4768 4.31067C 16.8428 4.98497 17.1185 5.70447 17.2968 6.45067C 17.4866 7.24324 17.5806 8.05573 17.5768 8.87069ZM 14.2768 8.87069C 14.2899 8.00238 14.1616 7.13773 13.8968 6.31067C 13.6685 5.59992 13.2976 4.94321 12.8068 4.38068C 12.3327 3.85209 11.7445 3.4383 11.0868 3.17067C 9.61487 2.61107 7.98875 2.61107 6.51681 3.17067C 5.85635 3.43852 5.26495 3.85216 4.78681 4.38068C 4.29106 4.94133 3.91655 5.59841 3.68681 6.31067C 3.1757 7.97907 3.1757 9.76228 3.68681 11.4307C 3.91647 12.14 4.29107 12.7938 4.78681 13.3507C 5.26564 13.8784 5.85684 14.2919 6.51681 14.5607C 7.98875 15.1203 9.61487 15.1203 11.0868 14.5607C 11.7438 14.2918 12.3318 13.8782 12.8068 13.3507C 13.2978 12.7921 13.6688 12.1386 13.8968 11.4307C 14.1616 10.6036 14.2899 9.73899 14.2768 8.87069Z" transform="translate(76.0137 9)"/>
                                </g>
                                <g id="Vector_3____logo-new">
                                    <path d="M 10.7 2.48L 3.24 2.48L 3.24 17.35L -7.32422e-06 17.35L -7.32422e-06 -6.10352e-06L 10.7 -6.10352e-06L 10.7 2.48Z" transform="translate(96.4297 9.20068)"/>
                                </g>
                                <g id="Vector_4____logo-new">
                                    <path d="M 17.5768 8.87069C 17.588 10.0763 17.3744 11.2734 16.9468 12.4007C 16.5492 13.4479 15.9437 14.4037 15.1668 15.2107C 14.3816 16.0126 13.4383 16.6426 12.3968 17.0607C 10.083 17.9521 7.52058 17.9521 5.2068 17.0607C 4.16252 16.6422 3.21603 16.0124 2.4268 15.2107C 1.64678 14.4043 1.03791 13.4485 0.63681 12.4007C -0.212269 10.1205 -0.212269 7.61087 0.63681 5.33068C 1.03791 4.2829 1.64678 3.32708 2.4268 2.52068C 3.21603 1.71897 4.16252 1.08911 5.2068 0.670674C 6.3478 0.213539 7.56774 -0.0141348 8.79681 0.000675774C 9.63337 -0.00303305 10.4669 0.101157 11.2768 0.310673C 12.0251 0.501213 12.7448 0.790415 13.4168 1.17067C 14.0611 1.53952 14.6503 1.99736 15.1668 2.53067C 15.6814 3.06249 16.1221 3.66121 16.4768 4.31067C 16.843 4.98488 17.1187 5.70441 17.2968 6.45067C 17.4866 7.24324 17.5806 8.05573 17.5768 8.87069ZM 14.2768 8.87069C 14.2899 8.00238 14.1616 7.13773 13.8968 6.31067C 13.6685 5.59992 13.2976 4.94321 12.8068 4.38068C 12.3327 3.85209 11.7445 3.4383 11.0868 3.17067C 9.61487 2.61107 7.98875 2.61107 6.51681 3.17067C 5.85635 3.43852 5.26495 3.85216 4.7868 4.38068C 4.29105 4.94133 3.91656 5.59841 3.68681 6.31067C 3.17571 7.97907 3.17571 9.76228 3.68681 11.4307C 3.91648 12.14 4.29106 12.7938 4.7868 13.3507C 5.26563 13.8784 5.85685 14.2919 6.51681 14.5607C 7.98875 15.1203 9.61487 15.1203 11.0868 14.5607C 11.744 14.2921 12.332 13.8785 12.8068 13.3507C 13.2978 12.7921 13.6688 12.1386 13.8968 11.4307C 14.1616 10.6036 14.2899 9.73899 14.2768 8.87069Z" transform="translate(107.724 9)"/>
                                </g>
                                <g id="Vector_5__logo-new">
                                    <path d="M 13.69 2.6L 8.46 2.6L 8.46 17.3L 5.23 17.3L 5.23 2.6L 7.32422e-06 2.6L 7.32422e-06 -6.10352e-06L 13.69 -6.10352e-06L 13.69 2.6Z" transform="translate(126.57 9.20068)"/>
                                </g>
                                <g id="Vector_6__logo-new">
                                    <path d="M 14.67 9.70424e-06L 14.67 17.35L 11.43 17.35L 11.43 6.48002C 11.43 6.07335 11.43 5.64669 11.43 5.20002C 11.43 4.75336 11.4767 4.27668 11.57 3.77001C 11.421 4.19313 11.2473 4.60717 11.05 5.01002C 10.8633 5.39002 10.68 5.72335 10.5 6.01002L 3.85999 16.35C 3.78265 16.4765 3.69575 16.5968 3.60001 16.71C 3.50223 16.8286 3.39153 16.9359 3.26999 17.03C 3.14733 17.1239 3.01284 17.2012 2.87 17.26C 2.73075 17.3189 2.58118 17.3495 2.42999 17.35L 0 17.35L 0 9.70424e-06L 3.23999 9.70424e-06L 3.23999 10.87C 3.23999 11.2767 3.23999 11.7067 3.23999 12.16C 3.23999 12.6133 3.19334 13.09 3.10001 13.59C 3.24968 13.1639 3.42328 12.7466 3.62 12.34C 3.78739 11.9963 3.97436 11.6624 4.17999 11.34L 10.8 1.00001C 10.8773 0.873541 10.9643 0.753187 11.06 0.640009C 11.1579 0.521533 11.2686 0.414226 11.39 0.320017C 11.51 0.227502 11.641 0.150248 11.78 0.0900213C 11.9223 0.0298278 12.0755 -0.000804156 12.23 9.70424e-06L 14.67 9.70424e-06Z" transform="translate(142.5 9.20068)"/>
                                </g>
                                <g id="Vector_7__logo-new">
                                    <path d="M 14.03 17.35L 10.78 17.35L 10.78 2.48L 3.24 2.48L 3.24 17.35L 8.54492e-06 17.35L 8.54492e-06 -6.10352e-06L 14 -6.10352e-06L 14.03 17.35Z" transform="translate(161.04 9.20068)"/>
                                </g>
                            </g>
                        </g>
                    </g>
                </g>
            </svg>
            <span class="logo-sign">вашей организации</span>
        </span>
			</div>

			<div class="header-scroll-main-menu">
				<nav class="desktop-menu uk-hidden-small">
					[[DLMenu? &parents=`0` &maxDepth=`1` &filters=`AND(content:id:notin:1;content:template:notin:13,19,22,24)` &outerTpl=`@CODE:<ul [+classes+] id="menu-flex-scroll">[+wrap+]</ul>` &rowTpl=`scroll_dlmenu_rowTpl` &hereClass=`active` &activeClass=`active` &outerClass=`menu flex` &innerClass=`menu-sub`]]
				</nav>
				<nav class="mobile-menu uk-visible-small">
					<span class="button-mobile-menu"><i class="uk-icon-bars"></i></span>
					[[DLMenu? &parents=`0` &maxDepth=`6` &filters=`AND(content:template:notin:13,19,22,24)` &outerTpl=`@CODE:<ul [+classes+]>[+wrap+]</ul>` &rowTpl=`@CODE:<li [+classes+]><a href="[+url+]" title="[+title+]">[+title+]</a>[+wrap+]</li>` &parentRowTpl=`mobile_dlmenu_parentRowTpl` &hereClass=`active` &activeClass=`active` &outerClass=`menu flex` &innerClass=`menu-sub`]]
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



	<div class="container">
		{{main_menu_header}}
	</div>
</div>