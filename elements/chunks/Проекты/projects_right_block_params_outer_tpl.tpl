name:projects_right_block_params_outer_tpl
description:Шаблон вывода контейнера блока преимущества в правом блоке
======
<div class="projects-card-inner-wrap">
	[+result+]
	[[if?  &is=`[*projects_all_chars_ancor_link*]:=:1` &then=`<a href="[~[*id*]~]#all_chars" class="projects-card-description-more">Все характеристики</a>`]]
</div>