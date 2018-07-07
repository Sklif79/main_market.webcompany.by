name:staff_group_tpl
description:Вывод группы сотрудников на странице контакты дилеров
======
<div class="staff-wrap">
	<h2>[+pagetitle+]</h2>
	[+content+]
	[[ddGetMultipleField? &inputString_docField='staff_contacts_info' &inputString_docId='[+id+]' &rowTpl='staff_contacts_info_tpl' &outerTpl='staff_contacts_info_outer_tpl']]	
</div>