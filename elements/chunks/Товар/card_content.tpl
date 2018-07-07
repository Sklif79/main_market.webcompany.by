name:card_content
description:Вывод блока контент в карточке товара
======
[[if? &is=`[*content*]:empty` &then=`` &else=`<div class="card-description-more">
	<h4>[+block_name+]</h4>

	<div class="card-description-more__txt hidden">
		[*content*]
	</div>
	[*content:len:gt='400':then='<span class="card-description-more__btn">Подробнее</span>'*]
</div>` ]]