name:card_recomended_even_tpl
description:Шаблон вывода элементов рекомендуем посмотреть четный
======
	<div class="completed-projects-slider-el-wrap">
		<div class="completed-projects-slider-el">
			<div class="completed-projects-slider__img">
				<img src="[[phpthumb? &input=`[+services_img_prev_new+]` &options=`w=440,h=192,f=png,q=85,far=C,bg=ffffff`]]" alt="">
			</div>
			<div class="completed-projects-slider__info">
				<div class="completed-projects-slider__info-title">
					<a href="[+url+]">
						<span>[+title+]</span>
					</a>
				</div>
				<div class="completed-projects-slider__info-el">
					[[if? &is=`[+services_detailed_description_prew+]:empty` &then=`<p>[+introtext+]</p>`
				&else=`[[ddGetMultipleField? &inputString_docField=`services_detailed_description_prew` &inputString_docId=`[+id+]` &rowTpl=`services_detailed_description_prew_tpl`]]`]]
				</div>
			</div>
		</div>
	</div>
</div>