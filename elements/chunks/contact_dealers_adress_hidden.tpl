name:contact_dealers_adress_hidden
description:
======
[[if? &is=`[+total+]:>=:2` &then=`
<div class="contact-info-more-wrap">
	<div class="contact-info__more">[+visible_name+]</div>
	<div class="contact-info__more-hide">
		<ul>
			[+result+]
		</ul>
	</div>
</div>
`]]