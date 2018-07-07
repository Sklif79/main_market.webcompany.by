name:custom_pages_main_outer_mobile_tpl
description:Шаблон вывода контейнера страниц пользователя услуги мобильная верссия
======
<div class="service-m-el-wrap">
	[+result+]
</div>
[[if? &is=`[+total+]:>:8` &then=`<div class="service-m__lnk-wrap"><a href="#" class="view-more" id='custom_pages_index_load_mobile'  start='8' parent='[*id*]' ajax_url='[(site_url)][~1122~]' serv_tpl='custom_pages_main_mobile_tpl'>
		<svg width="16" height="16" viewBox="0 0 16 16" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
			<g id="Canvas__refresh" transform="translate(-11171 838)">
				<g id="refresh-button">
					<g id="Group__refresh">
						<g id="refresh__refresh">
							<g id="Vector_refresh">
								<use xlink:href="#refresh_fill" transform="translate(11171 -838)"></use>
							</g>
						</g>
					</g>
				</g>
			</g>
			<defs>
				<path id="refresh_fill" d="M 13.6 2.4C 12.2 0.9 10.2 0 8 0C 3.6 0 0 3.6 0 8C 0 12.4 3.6 16 8 16C 11.7 16 14.8 13.4 15.7 10L 13.6 10C 12.8 12.3 10.6 14 8 14C 4.7 14 2 11.3 2 8C 2 4.7 4.7 2 8 2C 9.7 2 11.1 2.7 12.2 3.8L 9 7L 16 7L 16 0L 13.6 2.4Z"></path>
			</defs>
		</svg>
		<span>Показать остальные страницы</span>
	</a></div>`]]