name:reviews_tpl
description:шаблон вывода отзывов
======
<div class="review-block">
	<div class="title"><p>[+col0+]</p> <span>[[convertDate? &PubDate=`[+col1+]` &timestep=`1` &type=`jFY`]]</span></div>
	<div class="content">
		[+col2+]
	</div>
	[[if? &is=`[+col3+]:isempty` &then=`` &else=`
	<div class="answer">
		[+col3+]
	</div>
	`]]
</div>