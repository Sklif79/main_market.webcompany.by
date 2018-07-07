name:service_inner_image_and_right_block
description:Блок с изображением в карточке товара в правом блоке
======
<!-- изображение с кнопкой заказать проект -->
<div class="service-image-wrap">
	<div class="service-image">
		<img src="[[phpthumb? &input='[*service_inside_more_v20_img*]' &options='w=607,h=320,f=jpeg,q=85,zc=C,bg=ffffff']]" alt="">
	</div>
	<div class="service-image-info">
		<div class="main-first-info__print">
			<span>Печать</span>
		</div>
		
		[*service_inside_more_v20_right_text*]

		<!--@-Кнопка заказать услугу-@-->
		[*projects_right_block_button_visible:is=`1`:then=`
		<div class="service-image-info-lnk-wrap">
			<a href="#new_service_projects" data-uk-modal="" class="projects-card-info__lnk buy-btn">[*projects_right_block_button_name*]</a>
		</div>
		`*]
	</div>
</div>