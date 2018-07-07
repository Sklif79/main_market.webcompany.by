name:contact_dealers_groups_contacts
description:Контакты диллеров с разбиением по группам
======
<div class="contact-page-dealers">
	<h2>[*pagetitle@[[ChildParams? &field=`id` &child_nmr=`2`]]*]</h2>
	[*content@[[ChildParams? &field=`id` &child_nmr=`2`]]*]

	[[DocLister? &id=`dealers_group` &parents=`[[ChildParams? &field=`id` &child_nmr=`2`]]` &depth=`0` &tvPrefix=`` &tvList=`` &tpl=`dealers_group_tpl` &orderBy=`menuindex ASC` &total=`all` &ownerTPL=`@CODE:<div class="contact-dealers-wrap">[+dl.wrap+]</div>` &noneWrapOuter=`0`]]
	<div id='contact-dealers-params' style="display:none;" parent="[[ChildParams? &field=`id` &child_nmr=`2`]]" ajax_url_city="[(site_url)][~1190~]" ajax_url_dialers="[(site_url)][~1191~]"></div>
</div>