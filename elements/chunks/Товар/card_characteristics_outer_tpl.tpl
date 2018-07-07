name:card_characteristics_outer_tpl
description:Контейнер вывода характеристик товара новый вариант
======
<div class="card-description progect-page">
	<a name="all_chars"></a>
	<h4>[*specifications_prod_header*]</h4>
	<div class="card-description__table-wrap [[if? &is=`[*specifications_prod_hidden*]:=:1` &then=`hidden`]]">
		<table class="card-description__table">
			[+result+]
		</table>
	</div>
	[[if?  &is=`[+resultTotal+]:>=:9:and:[*specifications_prod_hidden*]:=:1` &then=`<div class='table-more'>Показать весь список</div>`]]
</div>