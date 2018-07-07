name:product_new_questions
description:Блок Вопросы и ответы в новой карточке товара
======
[[if? &is=`[*question_answer*]:empty` &then=`` &else=`
<div class="card-reviews">
	<div class="title-wrap">
		<h4>[+block_name+]</h4>
		<a href="#answer" data-uk-modal class="title-button">[+button_text+]</a>
	</div>

	<div class="question-wrap">
		[[ddGetMultipleField? &inputString_docField=`question_answer` &rowTpl=`question_answer_product_tpl`]]
	</div>
	[*questions_product_after_text*]
</div>`]]