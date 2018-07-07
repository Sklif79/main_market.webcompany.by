name:similar_items
description:Блок Похожие товары на странице товар подробнее
======
<div class="preview-product uk-padding-remove">
	<div class="container uk-position-relative">
		<div class="main-controls uk-flex uk-flex-space-between uk-flex-middle">
			<h3>Похожие товары</h3>
			<div class="controls">
				<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""/></div>
				<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""/></div>
			</div>
		</div>
		<div class="preview-product-slider-second uk-grid">
			[[DocLister? &id=`similar_items` &parents=`[*parent*]` &depth=`0` &tvPrefix=`` &tvList=`product_prev,novelty,sale,sale_persent,bestseller,articul,new_price,old_price,img_prew_prod` &tpl=`similar_items_tpl` &orderBy=`RAND()` &total=`20` &noneWrapOuter=`0` &filters=`AND(content:template:in:38,64)` &prepare=`class_order_add`]]
		</div>
		<div class="slider-controls">
			<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""/></div>
			<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""/></div>
		</div>
	</div>
</div>