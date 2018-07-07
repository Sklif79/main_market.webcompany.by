name:dealers_group_tpl
description:Шаблон вывода групп диллеров
======
<div class="contact-dealers-region">
	<h3>
		[+pagetitle+]
	</h3>
	[+content+]
	[[ddGetMultipleField? &inputString_docField=`dialers_contacts_info` &inputString_docId=`[+id+]` &rowTpl=`dialers_contacts_info_tpl` &outerTpl=`dialers_contacts_info_outer_tpl` [+filter+] ]]
</div>