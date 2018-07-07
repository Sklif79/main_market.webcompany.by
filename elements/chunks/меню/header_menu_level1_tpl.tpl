name:header_menu_level1_tpl
description:Шаблон вывода пунктов меню под логотипом первый уровень
======
<li class="level1 [[header_menu_active? &idp=`[+col1+]` &addClass=`active`]]">
	<a href="[+col1+]" title="[+col0+]">[+col0+]</a>
	[[header_submenu_gener? &idp=`[+col1+]` &addSubmenu=`[+col2+]`]]
</li>