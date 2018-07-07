name:card_completed_projects
description:Блок Выполненные проекты в карточке товара
======
<div class="completed-projects">
	<h4>[+block_name+]</h4>
	<div class="completed-projects-slider-wrap">
		<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""></div>
		<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""></div>
		
		
		<div class="completed-projects-slider">

			[[DocLister? &id=`card_completed_projects` &parents=`[+parent_id+]` &depth=`3` &tvPrefix=`` &tvList=`services_img_prev_new,services_detailed_description_prew` &tpl=`card_completed_projects_tpl` &orderBy=`parent ASC,menuindex ASC` &total=`20` &noneWrapOuter=`0` &addWhereList=`c.isfolder = 0`]]

		</div>
	</div>
</div>