name:Новости каталог
description:News_catalog
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

		<!-- --@ корзина по ховеру под корзиной в header @-- -->
		{{basket_under_header}} [[breadcrumbs_select_load]]

		<div class="container second-page">
			<div class="uk-grid">
				{{left_bar}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					<div class="news-page">
						[[DocLister? &id=`news_big` &tvPrefix=`` &tvList=`news_img_prew_big_elem,text_big_prew_news` &total=`1` &tpl=`news_prew_first_tpl` &orderBy=`menuindex DESC`]]
						<div class="article-page uk-grid uk-grid-width-1-1 uk-grid-width-large-1-2">
							[[DocLister? &id=`news_small` &tvPrefix=`` &tvList=`news_img_prew_small_elem,news_img_prew_big_elem,text_big_prew_news` &start=`1` &tpl=`news_prew_tpl` &orderBy=`menuindex DESC`]]
						</div>
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

