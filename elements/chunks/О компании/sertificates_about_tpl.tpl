name:sertificates_about_tpl
description:Шаблон вывода блока слайдеров на странице о компании 
======
<div class="sertificates-wrap">
	[[if? &is='[+add_header_sertif_check+]:=:1' &then='<h4>[+title+]</h4>']]
	[+content+]
	<div class="sertificates">
		[[ddGetMultipleField? &inputString_docField='certificate' &inputString_docId='[+id+]' &rowTpl='certificate_about_tpl']]
	</div>
	[+text_after_sertif+]
</div>