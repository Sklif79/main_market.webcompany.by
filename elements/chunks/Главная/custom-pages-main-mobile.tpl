name:custom-pages-main-mobile
description:Страницы пользователя услуги на главной
======
<div class="service-main-mobile desktop-hidden custom-pages">
	<div class="container">
		<div class="main-title">
			<h2>[*custom_pages_main_header*]</h2>
		</div>
		[*custom_pages_main_title*]
		[[ddGetMultipleField? &inputString_docField='custom_pages_main' &inputString_docId='[*id*]' &rowTpl='custom_pages_main_mobile_tpl' &totalRows=`8` &outerTpl=`custom_pages_main_outer_mobile_tpl`]]
	</div>		
</div>