name:services_template_6_tpl
description:Шаблон вывода превью для шестого шаблона с выводом акций
======
<div class="news-element">
	<div class="img">
		<a href="[+url+]">
			<img src="[[phpthumb? &input='[+services_img_prev_new+]' &options='w=286,h=170,f=png,q=95,zc=L,bg=ffffff']]" alt="[+title+]">
		</a>
	</div>
	<div class="content">
		[[if? &is=`[+serv_action_text+]:empty` &then=`` &else=`<p class="data">[+serv_action_text+]</p>`]]
		<a href="[+url+]">
			<p class="text">[+title+]</p>
		</a>
	</div>
</div>