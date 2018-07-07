name:block_description
description:Блок с подробным описанием товара
======
[[if? &is=`[*content*]:empty` &then=`` &else=`
<div class="card-description-more">
	<h4>[+header+]</h4>
	<div class="card-description-more__txt hidden">
		[*content*]
	</div>
	[*content:len:gt='400':then='<span class="card-description-more__btn">[+more_btn_text+]</span>'*]
</div>
`]]