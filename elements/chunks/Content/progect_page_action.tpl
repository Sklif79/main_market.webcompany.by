name:progect_page_action
description:Контентный блок акция
======
<div class="progect-page-action">
	[[if? &is=`[+label+]:empty` &then=`` &else=`
	<div class="progect-page-action__label">
		[+label+]
	</div>`]]
	
	[[if? &is=`[+title+]:empty` &then=`` &else=`<strong>[+title+]</strong>`]]

	[[if? &is=`[+action_date+]:empty` &then=`` &else=`<div class="progect-page-action__date">[+action_date+]</div>`]]
	[[if? &is=`[+content+]:empty` &then=`` &else=`<p>[+content+]</p>`]]
</div>