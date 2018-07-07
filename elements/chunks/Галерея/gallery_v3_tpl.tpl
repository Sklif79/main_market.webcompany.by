name:gallery_v3_tpl
description:Вариант вывода элементов вывода галереи версия 3
======
<div class="certificate margin">
	[[if? &is='[+add_header_sertif_check+]:=:1' &then='<h2>[+title+]:</h2>']]
	<div>[+content+]</div>
	<div class="card-gallery">
		[[ddGetMultipleField? &inputString_docField=`card_gallery` &inputString_docId=`[+id+]` &rowTpl=`card_gallery_tpl` &outerTpl=`card_gallery_outer_tpl`]]

		[[ddGetMultipleField? &inputString_docField=`card_gallery` &inputString_docId=`[+id+]` &rowTpl=`card_gallery_pager_tpl` &outerTpl=`card_gallery_pager_outer_tpl`]]
	</div>
</div>