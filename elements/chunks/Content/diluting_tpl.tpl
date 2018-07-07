name:diluting_tpl
description:Шаблон вывода элементов превью для разводящей страницы
======
<li>
	<div class="view view-second">
		<img src="[[phpthumb? &input=`[+diluting_img_prew+]` &options=`w=155,h=155,f=png,q=95,far=C,bg=ffffff`]]">
		<div class="title-red">[+pagetitle+]</div>
		<div class="mask"></div>
		<div class="content">
			<h2><a href="[+url+]">[+pagetitle+] <i class="uk-icon-angle-down"></i></a></h2>
			<ul class="no-sub">
				<li><a href="[+url+]">[+introtext+]</a></li>
			</ul>
		</div>
	</div>
</li>