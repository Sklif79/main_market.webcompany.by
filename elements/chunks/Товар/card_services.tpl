name:card_services
description:Блок услуги на странице карточка товара
======
<div class="card-services">
	<h4>[+block_name+]</h4>

	<div class="card-services-slider-wrap">
		<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""></div>
		<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""></div>

		<div class="completed-project-inner card-services-slider">
			[[DocLister? &id=`card_services` &parents=`[+parent_id+]` &depth=`3` &tvPrefix=`` &tvList=`services_img_prev_new` &tpl=`card_services_tpl` &orderBy=`parent ASC, menuindex ASC` &total=`20` &noneWrapOuter=`0` &addWhereList=`c.isfolder = 0`]]
		</div>
	</div>
</div>