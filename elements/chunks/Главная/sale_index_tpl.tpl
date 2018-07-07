name:sale_index_tpl
description:Шаблон вывода элементов Спецпредложения от нашей компании
======
[+template:is=`38`:or:is=`64`:then=`
<div class="slider-sale-item">
	<div class="img">
		<a href="[+url+]">
			<img src="[[phpthumb? &input=`[+product_prev+]` &options=`w=251,h=251,f=png,q=95,far=C,bg=ffffff`]]" alt="[+pagetitle+]"/>
		</a>
	</div>
	<div class="content">

		[+sale:is=`1`:then=`<div class="sale-block">
		<div class="sale-block__discounts">Скидка [+sale_persent:ne=``:then=`[+sale_persent+]%`+]</div>
		</div>`+]
		<div class="price-name"><a href="[+url+]">[+pagetitle+]</a></div>

		<!--@- добавил -@-->
		<div class="tag"><a href="[~[+parent+]~]">[*pagetitle@[+parent+]*]</a></div>
		<!--@- / -@-->

		<div class="price">
			<p>[[format_pr? &format_pr=`[+new_price+]`]] <span class="price_rub">руб.</span></p>					
			[[if? &is=`[+old_price+]:empty` &then=`` &else=`
			<span class="price-old-wrap">
				<span class="price_old_rub_val">[[format_pr? &format_pr=`[+old_price+]`]]</span>
				<span class="price_old_rub"> руб.</span>	
			</span>`]]
		</div>
		<div class="more-sldier"><a href="[+url+]" class="primary-button">подробнее</a></div>
	</div>
</div>`:else=`
<div class="slider-sale-item news">
	<div class="img">
		<a href="[+url+]">
			<img src="[[phpthumb? &input=`[+services_img_prev_new+]` &options=`w=272,h=147,f=png,q=95,zc=C,bg=ffffff`]]" alt="[+title+]">
		</a>
	</div>
	<div class="content">
		<div class="action-name"><a href="[+url+]">[+title+]</a></div>
		<div class="sale-deadline">
			[+serv_action_text+]
		</div>
		<div>
			[+introtext+]
		</div>
	</div>
</div>
`+]