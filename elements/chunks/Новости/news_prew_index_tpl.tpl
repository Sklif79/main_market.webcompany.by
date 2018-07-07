name:news_prew_index_tpl
description:Шаблон вывода превью новостей на главной
======
<div class="news-element">
	<div class="img">
		<a href="[+url+]">
			<img src="[[if? &is=`[+news_img_prew_small_elem+]:isempty` &then=`[[phpthumb? &input=`[+news_img_prew_big_elem+]` &options=`w=286,h=170,f=png,q=95,zc=C,bg=ffffff`]]` &else=`[[phpthumb? &input=`[+news_img_prew_small_elem+]` &options=`w=286,h=170,f=png,q=95,zc=C,bg=ffffff`]]`]]" alt="[+pagetitle+]"/>
		</a>
	</div>
	<div class="content">
		<p class="data">[[if? &is=`[+pub_date+]:isempty` &then=`[[convertDate? &PubDate=`[+createdon+]` &type=`dhY`]]` &else=`[[convertDate? &PubDate=`[+pub_date+]` &type=`dhY`]]`]]</p>
		<a href="[+url+]">
			<p class="text">[+pagetitle+]</p>
		</a>
	</div>
</div>