name:left_bar_menu_parentRowTpl
description:Шаблон вывода пункта меню с подменю
======
<li [+wf.classes+]>
	<div class="wrap"><a href="[+wf.link+]" title="[+wf.title+]">[+wf.linktext+]</a>
		<span class="click-arrow uk-icon-angle-down"></span>
	</div>
	[+wf.wrapper+]
</li>