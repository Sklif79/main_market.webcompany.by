name:services-main
description:Блок услуги компании на главной
======
<div class="services-main tablet-hidden">
	<div class="container">
		<div class="main-title">
			<h2>[[GetPageParams? &iddoc=`35` &field=`pagetitle`]]</h2>
			<!-- <a href="[~35~]" class="primary-button">Все услуги</a> -->
		</div>
		[[GetPageParams? &iddoc=`35` &field=`content`]]

		<div class="uk-grid uk-grid-width-1-1 uk-grid-width-small-1-2 uk-grid-width-large-1-4 services_index"
			 data-uk-grid-match=".wrap-services">
			[[DocLister? &id=`services_index` &parents=`35,365,367` &tvPrefix=`` &tvList=`services_index_prew_img` &total=`8` &tpl=`services_index_tpl` &orderBy=`parent ASC,menuindex ASC` &prepare=`preparethumb` &phumb_img=`services_index_prew_img` &phumb_options=`w=300,h=250,f=png,q=95,zc=C,bg=ffffff`]]
		</div>
		[[if? &is=`[[childcount? &idp=`35,365,367`]]:>:8` &then=`<div class="uk-text-center"><a href="#" class="view-more" id='services_index_load'  start='8' parent='35,365,367' serv_tpl='services_index_tpl' ajax_url='[(site_url)][~46~]'>

		<svg width="16" height="16" viewBox="0 0 16 16" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
			<g id="Canvas__refresh" transform="translate(-11171 838)">
				<g id="refresh-button">
					<g id="Group__refresh">
						<g id="refresh__refresh">
							<g id="Vector_refresh">
								<use xlink:href="#refresh_fill" transform="translate(11171 -838)" />
							</g>
						</g>
					</g>
				</g>
			</g>
			<defs>
				<path id="refresh_fill" d="M 13.6 2.4C 12.2 0.9 10.2 0 8 0C 3.6 0 0 3.6 0 8C 0 12.4 3.6 16 8 16C 11.7 16 14.8 13.4 15.7 10L 13.6 10C 12.8 12.3 10.6 14 8 14C 4.7 14 2 11.3 2 8C 2 4.7 4.7 2 8 2C 9.7 2 11.1 2.7 12.2 3.8L 9 7L 16 7L 16 0L 13.6 2.4Z" />
			</defs>
		</svg>

		<span>Показать весь список услуг</span></a></div>`]]
		<div class="spinner center" style="display: none;">
			<img src="assets/templates/market/img/spinner.gif" width="60" height="60" alt="">
		</div>
	</div>
</div>