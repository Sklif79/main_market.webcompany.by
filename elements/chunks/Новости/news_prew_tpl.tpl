name:news_prew_tpl
description:Шаблон вывода превью новостей
======
<div class="element">
	<div>
		<div class="img">
			<a href="[+url+]"><img src="[[if? &is=`[+news_img_prew_small_elem+]:isempty` &then=`[[phpthumb? &input=`[+news_img_prew_big_elem+]` &options=`w=140,h=140,f=png,q=95,far=C,bg=ffffff`]]` &else=`[[phpthumb? &input=`[+news_img_prew_small_elem+]` &options=`w=140,h=140,f=png,q=95,far=C,bg=ffffff`]]`]]" alt=""/></a>
		</div>
		<div class="content">
			<p class="date">[[if? &is=`[+pub_date+]:isempty` &then=`[[convertDate? &PubDate=`[+createdon+]` &type=`jFY`]]` &else=`[[convertDate? &PubDate=`[+pub_date+]` &type=`jFY`]]`]]</p>
			<a href="[+url+]"><p>[+pagetitle+]</p></a>
		</div>
	</div>
</div>