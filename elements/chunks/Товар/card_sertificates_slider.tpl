name:card_sertificates_slider
description:Сертификаты в карточке товара слайдер
======
[[if? &is=`[*certificate*]:empty` &then=`` &else=`<div class="sertificates-wrap-slider ">
	<h4>[+block_name+]</h4>

	<div class="sertificates-slider-wrap">
		<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""></div>
		<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""></div>

		<div class="sertificates-slider">
			[[ddGetMultipleField? &inputString_docField=`certificate` &rowTpl=`certificate_card_tpl`]]
		</div>
	</div>
</div>`]]