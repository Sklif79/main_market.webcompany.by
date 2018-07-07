name:scroll_menu_rowTpl
description:Шаблон вывода подуровней скроллменю
======
<li [+wf.classes+]>
	<a href="[+wf.link+]" title="[+wf.title+]">[+wf.linktext+]</a>
	[[header_submenu_gener? &idp=`[~[+wf.docid+]~]` &addSubmenu=`1`]]
</li>