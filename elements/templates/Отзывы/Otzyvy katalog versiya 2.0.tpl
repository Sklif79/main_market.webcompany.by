name:Отзывы каталог версия 2.0
description:reviews_catalog
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

					[*content*]
					<div class="card-reviews">
						<div class="title-wrap">
							<h4></h4>
							<a href="#review" data-uk-modal class="title-button">Добавить отзыв</a>
						</div>

						[[DocLister? &id=`reviews` &parents=`[*id*]` &depth=`0` &display=`3` &tvPrefix=`` &tvList=`position_review,original_review_doc` &tpl=`review_prew_tpl` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0` &ownerTPL=`@CODE:<div class="card-review-wrap">[+dl.wrap+]</div>`]]

						[[if? &is=`[[childcount? &idp=`[*id*]`]]:>:3` &then=`<div class="button-center">
						<a href="#" class="view-more arrow card_reviews_load" start='3' parent='[*id*]' tpl='review_prew_tpl' ajax_url='[(site_url)][~1196~]'>
							<svg width="16" height="16" viewBox="0 0 16 16" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
								<g id="Canvas__refresh" transform="translate(-11171 838)">
									<g id="refresh-button">
										<g id="Group__refresh">
											<g id="refresh__refresh">
												<g id="Vector_refresh">
													<use xlink:href="#refresh_fill" transform="translate(11171 -838)"></use>
												</g>
											</g>
										</g>
									</g>
								</g>
								<defs>
									<path id="refresh_fill" d="M 13.6 2.4C 12.2 0.9 10.2 0 8 0C 3.6 0 0 3.6 0 8C 0 12.4 3.6 16 8 16C 11.7 16 14.8 13.4 15.7 10L 13.6 10C 12.8 12.3 10.6 14 8 14C 4.7 14 2 11.3 2 8C 2 4.7 4.7 2 8 2C 9.7 2 11.1 2.7 12.2 3.8L 9 7L 16 7L 16 0L 13.6 2.4Z"></path>
								</defs>
							</svg>
							<span>Показать еще</span>
						</a>
						</div>`]]
						<div class="spinner center" style="display: none;">
							<img src="assets/templates/market/img/spinner.gif" width="60" height="60" alt="">
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