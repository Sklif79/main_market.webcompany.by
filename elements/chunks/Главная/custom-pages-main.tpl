name:custom-pages-main
description:Блок страниц, заданных пользователем, на главной
======
<div class="services-main custom-pages tablet-hidden">
	<div class="container">
		<div class="main-title">
			<h2>[*custom_pages_main_header*]</h2>
		</div>
		[*custom_pages_main_title*]
		[[ddGetMultipleField? &inputString_docField='custom_pages_main' &inputString_docId='[*id*]' &rowTpl='custom_pages_main_tpl' &totalRows=`8` &outerTpl=`custom_pages_main_outer_tpl`]]
	</div>
</div>