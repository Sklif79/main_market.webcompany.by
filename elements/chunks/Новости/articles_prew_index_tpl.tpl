name:articles_prew_index_tpl
description:Шаблон вывода превью статей и новостей на главной
======
<div class="news-element">
	<div class="img">
		<a href="[+url+]">
			<img src="[[phpthumb? &input=`[+services_img_prev_new+]` &options=`w=286,h=170,f=png,q=95,zc=C,bg=ffffff`]]" alt="[+pagetitle+]"/>
		</a>
	</div>
	<div class="content">
		[[if? &is=`[+serv_action_text+]:isempty` &then=`` &else=`<p class="data">[+serv_action_text+]</p>`]]
		<a href="[+url+]">
			<p class="text">[+pagetitle+]</p>
		</a>
	</div>
</div>