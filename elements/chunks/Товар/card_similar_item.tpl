name:card_similar_item
description:Блок с этим товаром покупают в карточке товара
======
<div class="preview-product card-preview">
	<div class="container uk-position-relative">
		<h4>[+block_name+]</h4>

		<div class="more-buy">
			[[if? &is=`[*similar_product_select*]:empty' 
			&then='[[DocLister? &id=`similar_items` &parents=`[*parent*]` &depth=`0` &tvPrefix=`` &tvList=`product_prev,novelty,sale,bestseller,articul,new_price,old_price,img_prew_prod` &tpl=`similar_items_tpl` &orderBy=`RAND()` &total=`20` &noneWrapOuter=`0` &dateFormat=`%d.%m.%Y` &filters=`AND(content:template:in:38,64)`]]`
			&else=`[[DocLister? &id=`similar_items` &idType=`documents` &documents=`[*similar_product_select*]` &sortType=`doclist` &parents=`53` &depth=`5` &tvPrefix=`` &tvList=`product_prev,novelty,sale,sale_persent,bestseller,articul,new_price,old_price,img_prew_prod` &tpl=`similar_items_tpl` &orderBy=`menuindex DESC` &total=`20` &noneWrapOuter=`0` &dateFormat=`%d.%m.%Y` &filters=`AND(content:template:in:38,64)`]]`]]
		</div>
		<div class="slider-controls">
			<div class="customNextBtn"><img src="assets/templates/market/img/sprite/arr-slider-next.png" alt=""/></div>
			<div class="customPrevBtn"><img src="assets/templates/market/img/sprite/arr-slider-prev.png" alt=""/></div>
		</div>
	</div>
</div>