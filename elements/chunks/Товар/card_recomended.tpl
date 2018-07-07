name:card_recomended
description:Блок рекомендуем почитать в карточке товара
======
<div class="recomended">
	<h4>[+block_name+]</h4>

	<div class="recomended-slider-wrap">
		<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""></div>
		<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""></div>
		
		<div class="recomended-slider projects-page-column diluting-page">
			[[DocLister? &id=`card_recomended` &parents=`[+parent_id+]` &depth=`3` &tvPrefix=`` &tvList=`services_img_prev_new,services_detailed_description_prew` &tpl=`card_recomended_tpl` &orderBy=`menuindex ASC` &total=`20` &noneWrapOuter=`0` &addWhereList=`c.isfolder = 0`]]
		</div>
	</div>

</div>