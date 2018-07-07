name:parthers_tpl
description:Шаблон вывода блока партнеры
======
[[if? &is='[+add_header_sertif_check+]:=:1' &then='<h2>[+title+]:</h2>']]
<div>
	[+content+]
</div>
[[ddGetMultipleField? &inputString_docField=`company_partners` &inputString_docId=`[+id+]` &outerTpl=`company_partners_outer_tpl` &rowTpl=`company_partners_tpl`]]
<hr/>