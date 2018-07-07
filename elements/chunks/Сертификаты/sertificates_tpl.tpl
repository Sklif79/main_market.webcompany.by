name:sertificates_tpl
description:Сертификаты 
======
<div class="certificate margin">
	[[if? &is='[+add_header_sertif_check+]:=:1' &then='<h2>[+title+]:</h2>']]
	<div>[+content+]</div>
	<div class="certif-block  uk-grid uk-grid-width-1-1 uk-grid-width-small-1-2 uk-grid-width-large-1-4">
		[[ddGetMultipleField? &inputString_docField='certificate' &inputString_docId='[+id+]' &rowTpl='certificate_tpl']]
	</div>
</div>