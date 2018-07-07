name:news_prew_first_tpl
description:Шаблон вывода превью первой большой новости
======
<div class="congratulation">
	<div class="uk-grid">
		<div class="img uk-width-1-1 uk-width-small-3-10">
			<a href="[+url+]"><img src="[[phpthumb? &input=`[+news_img_prew_big_elem+]` &options=`w=242,h=257,f=png,q=95,far=C,bg=ffffff`]]" alt="[+pagetitle+]"/></a>
		</div>
		<div class="content uk-width-1-1 uk-width-small-7-10">
			<div class="content-padding">
				<a href="[+url+]"><h2>[+pagetitle+]</h2></a>
					<p class="date">[[if? &is=`[+pub_date+]:isempty` &then=`[[convertDate? &PubDate=`[+createdon+]` &type=`jFY`]]` &else=`[[convertDate? &PubDate=`[+pub_date+]` &type=`jFY`]]`]]</p>
					<div>
						[+text_big_prew_news+]
					</div>
				</div>
			</div>
		</div>
	</div>