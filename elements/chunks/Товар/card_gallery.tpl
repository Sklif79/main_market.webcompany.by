name:card_gallery
description:Галерея изображений большая на странице товар подробное описание
======
[[if? &is=`[*card_gallery*]:isempty` &then=`` &else=`
<div class="card-gallery">
	<h4>[+block_name+]</h4>

	[[ddGetMultipleField? &inputString_docField=`card_gallery` &inputString_docId=`[*id*]` &rowTpl=`card_gallery_tpl` &outerTpl=`card_gallery_outer_tpl`]]
	
	[[ddGetMultipleField? &inputString_docField=`card_gallery` &inputString_docId=`[*id*]` &rowTpl=`card_gallery_pager_tpl` &outerTpl=`card_gallery_pager_outer_tpl`]]
</div>`]]