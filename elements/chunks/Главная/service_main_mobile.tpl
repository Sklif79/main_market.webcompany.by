name:service_main_mobile
description:Услуги на главной мобильная версия
======
<div class="service-main-mobile desktop-hidden">
	<div class="container">
		<div class="main-title">
			<h2>[*pagetitle@35*]</h2>
		</div>
		<div class="service-m-el-wrap">
			[[DocLister? &id=`services_index_mobile` &parents=`35,365,367` &tvPrefix=`` &tvList=`services_index_prew_img` &total=`4` &tpl=`services_index_mobile_tpl` &orderBy=`parent ASC,menuindex ASC` &prepareWrap=`count_docs_prepare` &ownerTPL=`@CODE:[+dl.wrap+]`]]
		</div>

		[[if? &is=`[[childcount? &idp=`35,365,367`]]:>:4` &then=`<div class="service-m__lnk-wrap">
			<a href="#" class="view-more" id='services_index_load_mobile'  start='4' parent='35,365,367' serv_tpl='services_index_mobile_tpl' ajax_url='[(site_url)][~46~]'><span>Показать весь список услуг</span></a>
		</div>`]]

	</div>		
</div>