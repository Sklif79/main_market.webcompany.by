name:gallery_v2_tpl
description:Вариант вывода элементов вывода галереи версия 2
======
<div class="certificate margin">
	[[if? &is='[+add_header_sertif_check+]:=:1' &then='<h2>[+title+]:</h2>']]
	<div>[+content+]</div>
	<div class="projects-card">	
		<div class="projects-card-image-wrap">
			[[ddGetMultipleField? &inputString_docField=`projects_card_slider` &inputString_docId=`[+id+]` &outerTpl=`projects_card_slider_outer_tpl` &rowTpl=`projects_card_slider_tpl`]]

			[[ddGetMultipleField? &inputString_docField=`projects_card_slider` &inputString_docId=`[+id+]` &outerTpl=`projects_card_slider_pager_outer_tpl` &rowTpl=`projects_card_slider_pager_tpl`]]
		</div>
	</div>
</div>