name:projects_card_slider_pager_tpl
description:Шаблон вывода элементов навигации слайдера проект подробнее
======
<!--  -->
<div class="projects-card-slider-pager-el">
	<img src="[[if? &is=`[+col2+]:empty` &then=`[[phpthumb? &input='[+col0+]' &options='w=91,h=91,f=jpeg,q=85,zc=C,bg=ffffff']]` &else=`[[phpthumb? &input='[+col1+]' &options='w=91,h=91,f=jpeg,q=85,zc=C,bg=ffffff']]`]]" alt="[+col3+] навигационное изображение">
</div>