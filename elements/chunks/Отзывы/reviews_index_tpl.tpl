name:reviews_index_tpl
description:Шаблон вывода отзывов на главной
======
<div class="review-element">
	<div class="review-element-border">
		<div class="title">
			<p>[+col0+]</p>
			<span>[[convertDate? &PubDate=`[+col1+]` &timestep=`1` &type=`dhY`]]</span>
		</div>
		<div class="content">
			[+col2+]
			<!--<a href="#">читать подробнее</a>-->
		</div>
	</div>
</div>