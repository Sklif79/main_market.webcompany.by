name:articles_left_bar_tpl
description:Шаблон вывода элементов блока статьи в левом блоке
======
<div class="preview-news-block">
	<a href="[+url+]"><img src="[[phpthumb? &input=`[+services_img_prev_new+]` &options=`w=65,h=65,f=png,q=95,zc=C,bg=ffffff`]]" alt=""/></a>

	<div class="content">
		<a href="[+url+]">[+title+]</a>
	</div>
</div>