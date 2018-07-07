name:Партнеры
description:Partners
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
	</head>
	<body>

		<header class="header [+noshadow_class+]">
			{{header}}
		</header>
		<div class="container second-page">
			<div class="uk-grid">
				{{left_bar}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					<div class="parther-page">
						[[DocLister? &id=`parthers` &tvPrefix=`` &tvList=`add_header_sertif_check` &tpl=`parthers_tpl` &tplLast=`parthers_last_tpl` &orderBy=`menuindex ASC`]]
					</div>
				</div>
			</div>
		</div>
		<footer class="footer [+footer_add_class+]">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_forms_block}}
		</div>
	</body>
</html>