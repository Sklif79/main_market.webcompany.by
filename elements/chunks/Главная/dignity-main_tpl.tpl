name:dignity-main_tpl
description:Шаблон вывода элементов блока превью на главной
======
<div class="dignity-main-element">
	<div class="flex-block">
		<div class="img">
			<img src="[[phpthumb? &input=`[+col0+]` &options=`w=47,h=39,f=png,q=95,far=C,bg=ffffff`]]" alt=""/>
		</div>
		[+col1+]
	</div>
</div>