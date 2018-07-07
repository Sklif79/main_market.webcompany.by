name:footer_menu
description:Меню в нижней части сайта
======
<div class="container footer-container">
	[[ddGetMultipleField? &inputString_docField=`footer_menu` &inputString_docId=`1` &rowTpl=`top_menu_var2_tpl` &outerTpl=`@CODE:<ul>[+result+]</ul>`]]
	[[if? &is=`[[GetPageParams? &iddoc=`1` &field=`footer_company_details`]]:empty` &then='' &else='
	<div class="footer-details">
		<div class="footer-details__wrap">
			[[GetPageParams? &iddoc=`1` &field=`footer_company_details`]]
		</div>
	</div>
	']]
</div>