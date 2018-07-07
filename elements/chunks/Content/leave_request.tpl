name:leave_request
description:Блок с кнопкой оставить заявку
======
<div class="leave-request">
	<div class="leave-request__content">
		[[if? &is=`[+icon_url+]:empty` &then=`` &else=`<img src="[+icon_url+]" alt="иконка">`]]
		<div class="leave-request__info">
			[[if? &is=`[+title_r+]:empty` &then=`` &else=`<div class="leave-request__title">[+title_r+]</div>`]]
			[[if? &is=`[+content_r+]:empty` &then=`` &else=`<div class="leave-request__txt">[+content_r+]</div>`]]
		</div>
	</div>
	[[if? &is=`[+button_name+]:empty` &then=`` &else=`<a href="#feedback_question_popap" data-uk-modal="" class="leave-request__link">[+button_name+]</a>`]]
</div>