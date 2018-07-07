name:brands_tpl
description:Шаблон вывода элементов бренда
======
<div>
	<div class="wrap">
		<div class="img">
			<a href="[+url+]">
				<img src="[[phpthumb? &input=`[+brand_img+]` &options=`w=126,h=126,f=png,q=95,far=C,bg=ffffff`]]" alt="[+title+]"/>
			</a>
		</div>

		<p class="work">
			<a href="[+url+]">
				[+title+]
			</a>
		</p>
	</div>
</div>