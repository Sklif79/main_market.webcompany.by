name:custom_pages_main_tpl
description:Шаблон вывода превью страниц пользователя на главной
======
<div class="services-element">
	<a href="[+col2+]" target="[+col3+]"  class="wrap-services">
		<div class="image"><img src="[[phpthumb? &input=`[+col0+]` &options=`w=300,h=250,f=png,q=95,zc=C,bg=ffffff`]]" alt="[+col1+]"/></div>
		<div class="content">
			<div class="service-element__title">
				<div>
					[+col1+]
					<span class="service-element__more">Подробнее</span>
				</div>				
			</div>			
		</div>
	</a>
</div>