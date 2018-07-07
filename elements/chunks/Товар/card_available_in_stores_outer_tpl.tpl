name:card_available_in_stores_outer_tpl
description:Шаблон вывода контейнера наличия в магазинах
======
[[if? &is=`[+resultTotal+]:>=:1:and:[+row0.col0+]:!=:Нет` &then=`
<div class="available-in-stores card-page">
	<h4>[+block_name+]</h4>
	<div class="available-in-stores-wrap">[+result+]</div>
</div>
`]]