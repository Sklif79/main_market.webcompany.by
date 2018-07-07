name:product_new_dignity_tpl
description:Шаблон вывода превью  элементов преимущества товара
======
<div class="dignity-main-element">
	<div class="flex-block">
		<div class="img">
			<img src="[+col0+]" alt="">
		</div>
		[[if? &is=`[+col2+]:empty` &then=`<p>[+col1+]</p>` &else=`<p><a href="[+col2+]">[+col1+]</a></p>`]]
	</div>
</div>