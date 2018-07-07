name:scroll_dlmenu_rowTpl
description:Шаблон вывода подуровней скроллменю через Dlmenu
======
<li [+classes+]>
	<a href="[+url+]" title="[+title+]">[+title+]</a>
	[[header_submenu_gener? &idp=`[~[+id+]~]` &addSubmenu=`1`]]
</li>