name:gallery_v1_tpl
description:Вывод галереи версия 1
======
<div class="certificate margin">
	[[if? &is='[+add_header_sertif_check+]:=:1' &then='<h2>[+title+]:</h2>']]
	<div>[+content+]</div>
	<div class="gallery-images">
		[[ddGetMultipleField? &inputString_docField=`photo_gallery` &inputString_docId=`[+id+]` &rowTpl=`gallery_project_tpl`]]
	</div>
</div>