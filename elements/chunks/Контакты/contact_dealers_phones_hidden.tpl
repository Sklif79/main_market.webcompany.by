name:contact_dealers_phones_hidden
description:Шаблон вывода срытых телефонов для контактов диллеров
======
[[if? &is=`[+total+]:>=:5` &then=`
<div class="contact-info-more-wrap">
	<div class="contact-info__more">Показать все телефоны</div>
	<div class="contact-info__more-hide">
		<ul>
			[+result+]
		</ul>
	</div>
</div>
`]]