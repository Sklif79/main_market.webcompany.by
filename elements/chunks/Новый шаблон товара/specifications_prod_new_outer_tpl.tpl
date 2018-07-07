name:specifications_prod_new_outer_tpl
description:Контейнер вывода технических характеристик товара новая версия
======
<div class="card-description">
	<h2>[+specifications_prod_header+]</h2>
	
	<div class="card-description__table-wrap [[if? &is=`[*specifications_prod_hidden*]:=:1` &then=`hidden`]]">
		<table class="card-description__table">
			[+result+]
		</table>
	</div>
	[[if?  &is=`[+resultTotal+]:>=:9:and:[*specifications_prod_hidden*]:=:1` &then=`<div class="table-more">Подробные характеристики</div>`]]
</div>