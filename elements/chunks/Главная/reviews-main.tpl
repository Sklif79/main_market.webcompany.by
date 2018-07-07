name:reviews-main
description:Блок Отзывы на главной
======
<div class="container">
	<div class="main-title">
		<h2>Отзывы</h2>
		<a href="[~67~]" class="primary-button">все отзывы</a>
	</div>
	<div class="uk-grid uk-grid-width-1-1 uk-grid-width-large-1-2" data-uk-grid-match="review-element-border">
		[[ddGetMultipleField? &inputString_docField=`reviews` &inputString_docId=`67` &totalRows=`2` &rowTpl=`reviews_index_tpl`]]
	</div>
</div>