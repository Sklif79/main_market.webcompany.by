name:services_template_7_tpl
description:Шаблон вывода превью для седьмого шаблона шаблона
======
<div class="completed-projects-slider-el-wrap">
	<div class="completed-projects-slider-el">
		<div class="completed-projects-slider__img">
			<a href="[+url+]">
				<img src="[[phpthumb? &input='[+services_img_prev_new+]' &options='w=440,h=192,f=png,q=95,far=L,bg=ffffff']]" alt="[+title+]">
			</a>
		</div>
		<div class="completed-projects-slider__info">
			<div class="completed-projects-slider__info-title">
				<a href="[+url+]">
					<span>[+title+]</span>
				</a>
			</div>
			<div class="completed-projects-slider__info-el">
				[[if? &is=`[+services_detailed_description_prew+]:empty` &then=`<p class="description">[+introtext+]</p>`
				&else=`[[ddGetMultipleField? &inputString_docField=`services_detailed_description_prew` &inputString_docId=`[+id+]` &rowTpl=`services_detailed_description_prew_tpl`]]`]]
			</div>
			[[if? &is=`[+isfolder+]:=:1` &then=`
			<div class="completed-projects-slider-link">
				[[DocLister? &id=`services_subcat_prew` &parents=`[+id+]` &depth=`0` &tvPrefix=`` &tvList=`` &tpl=`services_subcat_prew_tpl` &orderBy=`menuindex ASC` &total=`all`]]
			</div>`]]
		</div>
	</div>
</div>