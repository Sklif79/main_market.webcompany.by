name:reviews_product_block
description:блок Отзывы на странице с подробным описанием товара
======
<div class="review">
	<h2>Отзывы о товаре:</h2>
	[[ddGetMultipleField? &inputString_docField=`reviews_product` &rowTpl=`reviews_tpl`]]
	<div class="button">
		<a href="[~67~]" class="primary-button">читать все отзывы</a>
		<a href="#answer" class="primary-button-border" data-uk-modal>добавить свой отзыв</a>
	</div>
</div>