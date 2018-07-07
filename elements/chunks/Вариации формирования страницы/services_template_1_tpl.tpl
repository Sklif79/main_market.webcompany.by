name:services_template_1_tpl
description:шаблон вывода превью услуг шаблон 1
======
<!--  -->
<div class="completed-project-item">
	<a href="[+url+]">
		<div class="completed-project__img">
			<img src="[[phpthumb? &input='[+services_img_prev_new+]' &options='w=440,h=192,f=png,q=95,far=L,bg=ffffff']]" alt="[+title+]">
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