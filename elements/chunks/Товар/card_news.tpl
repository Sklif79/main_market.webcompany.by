name:card_news
description:Блок вывода новостей в карточке товара
======
<div class="information-main">
	<h4>[+block_name+]</h4>

	<div class="news news-slider-wrap news-date">
		<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""></div>
		<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""></div>
		
		
		<div class="news-element-slider">
			[[DocLister? &id=`card_news` &parents=`[+parent_id+]` &depth=`3` &tvPrefix=`` &tvList=`services_img_prev_new,serv_action_text` &tpl=`articles_prew_index_tpl` &orderBy=`menuindex ASC` &total=`20` &noneWrapOuter=`0` &addWhereList=`c.isfolder = 0 AND c.id <> [*id*]`]]
		</div>
	</div>
</div>