name:sotrudniki_contacts_tpl
description:шаблон вывода блока сотрудники для страницы Контакты
======
<div class="jobs-block">
	<div class="spoiler-title">
		<p>[+pagetitle+]</p>

		<p><span class="uk-icon-angle-down"></span></p>
	</div>
	<div class="spoiler-body">
		<div class="employees">
			[[ddGetMultipleField? &inputString_docField='employees' &inputString_docId='[+id+]' &outerTpl='employees_contacts_outer_tpl' &rowTpl='employees_contacts_tpl']]
		</div>
	</div>
</div>