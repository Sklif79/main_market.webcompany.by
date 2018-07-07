name:services_template_2_tpl
description:шаблон вывода превью услуг шаблон 2
======
<div class="completed-projects-slider-el-wrap">
	<div class="completed-projects-slider-el">
		<div class="completed-projects-slider__img">
			<a href="[+url+]">
				<img src="[[phpthumb? &input='[+services_img_prev_new+]' &options='w=440,h=192,f=png,q=95,far=L,bg=ffffff']]" alt="[+title+]">
			</a>
		</div>
		[[if? &is=`[+serv_action_text+]:empty` &then=`` &else=`<p class="data">[+serv_action_text+]</p>`]]
		<div class="completed-projects-slider__info">
			<div class="completed-projects-slider__info-title">
				<a href="[+url+]">
					<span>[+title+]</span>
				</a>
			</div>
		</div>
	</div>
</div>