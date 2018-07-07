name:card_services_tpl
description:Шаблон вывода элементов блока услуги в карточке товара новой
======
<!--  -->
<div class="completed-project-item-wrap">
	<div class="completed-project-item">
		<a href="[+url+]">
			<div class="completed-project__img">
				<img src="[[phpthumb? &input=`[+services_img_prev_new+]` &options=`w=440,h=192,f=png,q=85,far=C,bg=ffffff`]]" alt="">
			</div>
			<div class="completed-project-content">
				<div class="completed-project-content-wrap">
					<div class="completed-project-content__title">
						[+title+]
						<p>
							[+introtext+]
						</p>
						<div class="completed-project__more">Подробнее</div>
					</div>
				</div>
			</div>
		</a>
	</div>
</div>