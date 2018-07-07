name:review_about
description:Отзывы на странице о компании
======
<div class="review">
	<h2>Отзывы о товаре:</h2>
	[[ddGetMultipleField? &inputString_docField=`reviews` &inputString_docId=`67` &totalRows=`2` &rowTpl=`reviews_tpl`]]
	<div class="button">
		<a href="[~67~]" class="primary-button">читать все отзывы</a>
		<a href="#" class="primary-button-border">добавить свой отзыв</a>
	</div>
</div>