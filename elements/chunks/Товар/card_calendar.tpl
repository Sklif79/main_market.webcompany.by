name:card_calendar
description:Вывод google календаря
======
[[if? &is=`[*card_calendar*]:empty` &then=`` &else=`
<div class="card-schedule">
	<h4>[+block_name+]</h4>

	<div class="card-schedule-wrap">
		[*card_calendar*]
	</div>
</div>`]]