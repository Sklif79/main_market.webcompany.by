name:video_catalog_tpl
description:Шаблон вывода групп видео
======
<div class="our-specialists">
	[[if? &is=`[+add_header_sertif_check+]:!=:0` &then=`<h4>[+title+]</h4>`]]
	[+content+]
	[[ddGetMultipleField? &inputString_docField=`product_new_video_block` &inputString_docId=`[+id+]` &rowTpl=`product_new_video_block_tpl` &outerTpl=`product_new_video_block_outer_tpl`]]
</div>