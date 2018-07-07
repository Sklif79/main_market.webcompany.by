name:our_specialists_tpl
description:Вывод группы сотрудников на странице контакты
======
<div class="our-specialists">
	[[if? &is=`[+add_header_sertif_check+]:!=:0` &then=`<h4>[+pagetitle+]</h4>`]]
	[+content+]
	[[ddGetMultipleField? &inputString_docField='staff_contacts_info' &inputString_docId='[+id+]' &rowTpl='staff_contacts_info_tpl' &outerTpl='our_specialists_outer_tpl']]	
</div>