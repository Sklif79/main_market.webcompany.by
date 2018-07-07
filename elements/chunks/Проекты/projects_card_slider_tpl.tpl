name:projects_card_slider_tpl
description:Шаблон вывода элементов слайдера проекты
======
<!--  -->
<div class="projects-card-slider-el">
	<a href='[+col0+]'  data-uk-lightbox="{group:'group3'}">
		<img src="[[if? &is=`[+col1+]:empty` &then=`[[phpthumb? &input='[+col0+]' &options='w=498,h=305,f=png,q=85,far=C,bg=ffffff']]` &else=`[[phpthumb? &input='[+col1+]' &options='w=498,h=305,f=png,q=85,far=C,bg=ffffff']]`]]" alt="[+col3+]">
		<div class="projects-card__overlay"></div>
	</a>
</div>