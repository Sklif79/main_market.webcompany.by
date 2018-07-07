name:news_index
description:Блок новостей на главной
======
<div class="news">
	<div class="main-title">
		<h2>[*pagetitle@8*]</h2>
		<a href="[~8~]" class="primary-button">Все новости</a>
	</div>
	<div class="news-wrap mobile_hidden">
		[[DocLister? &id=`news_index` &parents=`8` &total=`2` &tvPrefix=`` &tvList=`services_img_prev_new,serv_action_text` &tpl=`articles_prew_index_tpl` &orderBy=`menuindex DESC`]]
	</div>


	<div class="news-wrap-mobile">
		[[DocLister? &id=`news_index_m` &parents=`8` &total=`2` &tvPrefix=`` &tvList=`services_img_prev_new,serv_action_text` &tpl=`articles_prew_index_tpl` &orderBy=`menuindex DESC`]]
	</div>

	<div class="catalog-main-lnk-wrap">
		<a href="[~8~]" class="view-more button-mobile">Все новости</a>
	</div>

</div>