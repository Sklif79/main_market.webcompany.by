name:custom-pages-proj-main
description:Блок выполненные проекты на главной
======
<div class="completed-projects index-completed-project-slider">
	<div class="container">
		<div class="main-title">
			<h2>[*custom_pages_proj_main_header*]</h2>

			[[if? &is=`[*custom_pages_proj_main_all_link*]:empty` &then=`` &else=`<a href="[*custom_pages_proj_main_all_link*]" class="primary-button">Все проекты</a>`]]
		</div>
		[*custom_pages_proj_main_title*]
		<div class="completed-project-inner">
			[[ddGetMultipleField? &inputString_docField='custom_pages_proj_main' &inputString_docId='[*id*]' &rowTpl='custom_pages_proj_main_tpl']]
		</div>

		[[if? &is=`[*custom_pages_proj_main_all_link*]:empty` &then=`` &else=`
		<div class="catalog-main-lnk-wrap">
			<a href="[*custom_pages_proj_main_all_link*]" class="view-more button-mobile">Все проекты</a>
		</div>
		`]]
	</div>
</div>
<div class="separator-lines"></div>