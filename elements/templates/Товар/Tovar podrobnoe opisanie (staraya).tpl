name:Товар подробное описание (старая)
description:Product inside
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
				{{left_bar_catalog}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					<div class="main-first-product-block">
						<div class="uk-grid uk-grid-width-1-1 uk-grid-width-large-1-2 uk-grid-collapse">
							<div class="img-product">
								{{prod_ins_slider_gallery}}
								{{social_share}}
							</div>
							<div class="description">
								<div class="main-description">
									<div class="uk-grid uk-grid-width-1-3 uk-grid-small">
										<div class="in-stock-product">
											[[disp_icon_capt_text_avail]]
										</div>
										<div class="article">Артикул: [*articul*]</div>
										<div>Бренд: [*brand_name*]</div>
									</div>
									<div class="row-description">
										<div class="wrap">
											<div class="price-sale">
												[[format_pr? &format_pr=`[*old_price*]`]] руб.
											</div>
											<div class="price shk-price">[[format_pr? &format_pr=`[*new_price*]`]] руб.</div>
											<div class="right shk-item">
												<form action="[~[*id*]~]" method="post">
													<input type="hidden" name="shk-id" value="[*id*]" />
													<input type="hidden" name="shk-image" value="[*img_prew_prod*]" />
													<input type="hidden" name="shk-name" value="[*pagetitle*]" />
													<input type="hidden" name="shk-price" value="[*new_price*]" />
													<input type="hidden" name="shk-count" value="1" size="2" maxlength="3" />
													<button type="submit" name="shk-submit" class="btn_yellow">В корзину</button>
												</form>
											</div>
										</div>
										<div class="button"><a href="#product" data-product="Заказать товар «[+pagetitle+]»" class="primary-button" data-uk-modal>Заказать</a></div>
									</div>
								</div>
								<div class="content-text">
									[*content*]
								</div>
								{{specifications_prod}}
							</div>
						</div>

					</div>
					<div class="main-second-product-block">
						{{documents_product_block}}
						{{reviews_product_block}}
					</div>
					{{similar_items}}
					<div class="text-seo">
						[*product_bottom_seo_text_block*]
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