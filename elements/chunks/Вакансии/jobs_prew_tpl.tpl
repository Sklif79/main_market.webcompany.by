name:jobs_prew_tpl
description:Шаблон вывода вакансии
======
<div class="question-el">
	<div class="question-title">
		[+title+]
		<div class="question-title__price">
			[+wages_for_jobs+]
		</div>
	</div>
	<div class="question-answer">
		[+content+]
		<div>
			<a href="#jobs_form_new" data-uk-modal="" data-vacancy="[+title+]" class="upload-file">Отправить резюме</a>
		</div>
	</div>
</div>