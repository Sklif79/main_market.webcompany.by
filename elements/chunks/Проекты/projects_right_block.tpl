name:projects_right_block
description:Блок информационный справа от слайдера
======
<div class="projects-card-info-wrap">
	<!--@-Блок с текстом Задача-@-->
	[[ddGetMultipleField? &inputString_docField=`projects_right_first_text_block` &rowTpl=`projects_right_first_text_block_tpl`]]

	<!--@-Блок с текстами параметры проекта-@-->
	[[ddGetMultipleField? &inputString_docField=`projects_right_block_params` &rowTpl=`projects_right_block_params_tpl` &outerTpl=`projects_right_block_params_outer_tpl`]]	

	<!--@-Кнопка заказать проект-@-->
	[*projects_right_block_button_visible:is=`1`:then=`
	<div class="projects-card-info-lnk-wrap">
		<a href="#callback" data-uk-modal class="projects-card-info__lnk buy-btn">[*projects_right_block_button_name*]</a>
	</div>
	`*]

</div>
