name:questions_group_tpl
description:Шаблон вывода групп вопросов
======
<div class="card-reviews">
	<div class="title-wrap">
		[[if? &is=`[+add_header_sertif_check+]:!=:0` &then=`<h4>[+title+]</h4>`]]
		<a href="#answer" data-uk-modal class="title-button">Добавить свой вопрос</a>
	</div>

	<div class="question-wrap">
		[[ddGetMultipleField? &inputString_docField=`question_answer` &inputString_docId=`[+id+]` &rowTpl=`question_answer_product_tpl`]]
	</div>
	[+questions_product_after_text+]
</div>