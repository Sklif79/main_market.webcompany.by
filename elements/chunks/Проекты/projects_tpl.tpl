name:projects_tpl
description:шаблон вывода елементов блока выполненные проекты
======
<div>
	<div class="element-project">
		<a href="[+url+]"><img src="[[phpthumb? &input=`[+project_img_prew+]` &options=`w=425,h=245,f=png,q=95,zc=C,bg=ffffff`]]" alt="[+pagetitle+]"/></a>
		<div class="content">
			<a href="[+url+]">[+pagetitle+]</a>
			<p>[+introtext+]</p>
		</div>
	</div>
</div>