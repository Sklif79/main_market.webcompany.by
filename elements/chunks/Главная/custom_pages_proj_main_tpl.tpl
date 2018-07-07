name:custom_pages_proj_main_tpl
description:Шаблон вывода элементов блока выполненные проекты на главной 
======
<!--  -->
<div class="completed-project-item">
	<a href="[+col2+]" target="[+col3+]">
		<div class="completed-project__img">
			<img src="[[phpthumb? &input=`[+col0+]` &options=`w=390,h=192,f=png,q=95,zc=C,bg=ffffff`]]" alt="[+col1+]">
		</div>
		<div class="completed-project-content">
			<div class="completed-project-content-wrap">
				<div class="completed-project-content__title">
					[+col1+]
					[+col4+]
					<div class="completed-project__more">Подробнее</div>
				</div>
			</div>
		</div>
	</a>
</div>