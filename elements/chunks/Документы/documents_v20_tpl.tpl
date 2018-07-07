name:documents_v20_tpl
description:Шаблон вывода групп документов в каталоге
======
<div class="our-specialists">
	[[if? &is=`[+add_header_sertif_check+]:!=:0` &then=`<h4>[+title+]</h4>`]]
	[+content+]
	[[ddGetMultipleField? &inputString_docField=`documents_product_files` &inputString_docId=`[+id+]` &outerTpl=`card_documents_outer_tpl` &rowTpl=`card_documents_tpl`]]
</div>