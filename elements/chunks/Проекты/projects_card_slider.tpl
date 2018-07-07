name:projects_card_slider
description:Слайдер проекты подробнее
======
<div class="projects-card-image-wrap">
	[[ddGetMultipleField? &inputString_docField=`projects_card_slider` &outerTpl=`@CODE:<div class="projects-card-slider">[+result+]</div>` &rowTpl=`projects_card_slider_tpl`]]

	[[ddGetMultipleField? &inputString_docField=`projects_card_slider` &outerTpl=`@CODE:<div class="projects-card-slider-pager">[+result+]</div>` &rowTpl=`projects_card_slider_pager_tpl`]]
</div>