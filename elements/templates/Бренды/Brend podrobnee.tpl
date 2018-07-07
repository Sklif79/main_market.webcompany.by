name:Бренд подробнее
description:Brand hidden
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
					<div>
						[*content*]
					</div>
					<div class="sorting-catalog-view">
						<div class="rate">
							<span class="rate__title">Сортировать по:</span>
							<a href="#" id="menuindex" class="active up sorting-title">
								<span class="rate-mobile__title uk-icon-font"></span>
								<span class="sorting-name-desktop">Умолчанию</span>
							</a>
							<a href="#" id="price" class="down  sorting-title">
								<span class="rate-mobile__title uk-icon-usd"></span>
								<span class="sorting-name-desktop">Цене</span>
							</a>
							<a href="#" id="rating" class="up  sorting-title">								
								<span class="rate-mobile__title uk-icon-star"></span>
								<span class="sorting-name-desktop">Рейтингу</span>
							</a>
						</div>
						<div class="quantity">
							Показывать по:
							<a href="#" class="active">12</a>
							<a href="#">48</a>
							<a href="#">Все</a>
						</div>
						<div class="sorting-select-mobile">
							<select>
								<option value="sort_menuindex">Сортировать по умолчанию</option>
								<option value="sort_price">Сортировать по цене</option>
								<option value="sort_rating">Сортировать по рейтингу</option>
								<option value="count_12">Показывать по 12</option>
								<option value="count_48">Показывать по 48</option>
								<option value="count_all">Показывать все</option>
							</select>
						</div>
						<div class="view">
							<a href="#" class="block active">
								<svg width="16" height="16" viewBox="0 0 16 16" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
									<g id="Canvas__sorting-block" transform="translate(-11484 838)">
										<g id="Group42__sorting-block">
											<g id="Canvas__sorting-block2">
												<g id="Group4__sorting-block">
													<g id="Rectangle2__sorting-block">
														<g id="Vector__sorting-block">
															<use xlink:href="#path0_fill__sorting-block" transform="translate(11484 -838)" />
														</g>
													</g>
													<g id="Rectangle21__sorting-block">
														<g id="Vector__sorting-block2">
															<use xlink:href="#path0_fill__sorting-block" transform="translate(11490 -838)" />
														</g>
													</g>
													<g id="Rectangle22__sorting-block">
														<g id="Vector__sorting-block3">
															<use xlink:href="#path0_fill__sorting-block" transform="translate(11496 -838)" />
														</g>
													</g>
													<g id="Rectangle23__sorting-block">
														<g id="Vector__sorting-block4">
															<use xlink:href="#path0_fill__sorting-block" transform="translate(11484 -832)" />
														</g>
													</g>
													<g id="Rectangle24__sorting-block">
														<g id="Vector__sorting-block5">
															<use xlink:href="#path0_fill__sorting-block" transform="translate(11490 -832)" />
														</g>
													</g>
													<g id="Rectangle25__sorting-block">
														<g id="Vector__sorting-block6">
															<use xlink:href="#path0_fill__sorting-block" transform="translate(11496 -832)" />
														</g>
													</g>
													<g id="Rectangle26__sorting-block">
														<g id="Vector__sorting-block7">
															<use xlink:href="#path0_fill__sorting-block" transform="translate(11484 -826)" />
														</g>
													</g>
													<g id="Rectangle27__sorting-block">
														<g id="Vector__sorting-block8">
															<use xlink:href="#path0_fill__sorting-block" transform="translate(11490 -826)" />
														</g>
													</g>
													<g id="Rectangle28__sorting-block">
														<g id="Vector__sorting-block9">
															<use xlink:href="#path0_fill__sorting-block" transform="translate(11496 -826)" />
														</g>
													</g>
												</g>
											</g>
										</g>
									</g>
									<defs>
										<path id="path0_fill__sorting-block" d="M 0 0L 4 0L 4 4L 0 4L 0 0Z" />
									</defs>
								</svg>
							</a>
							<a href="#" class="line">
								<svg width="15" height="13" viewBox="0 0 15 13" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
									<g id="Canvas__sorting-line" transform="translate(-11434 837)">
										<g id="Group222__sorting-line">
											<g id="Canvas__sorting-line2">
												<g id="Group2__sorting-line">
													<g id="Rectangle2__sorting-line">
														<g id="Vector__sorting-line">
															<use xlink:href="#path0_fill__sorting-line" transform="translate(11434 -837)"/>
														</g>
													</g>
													<g id="Rectangle21__sorting-line">
														<g id="Vector__sorting-line2">
															<use xlink:href="#path0_fill__sorting-line" transform="translate(11434 -832)"/>
														</g>
													</g>
													<g id="Rectangle22__sorting-line">
														<g id="Vector__sorting-line3">
															<use xlink:href="#path0_fill__sorting-line" transform="translate(11434 -827)"/>
														</g>
													</g>
												</g>
											</g>
										</g>
									</g>
									<defs>
										<path id="path0_fill__sorting-line" d="M 0 0L 15 0L 15 3L 0 3L 0 0Z"/>
									</defs>
								</svg>

							</a>
							<a href="#" class="list">
								<svg width="20" height="13" viewBox="0 0 20 13" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
									<g id="Canvas__sorting-list" transform="translate(-11379 837)">
										<g id="Group32__sorting-list">
											<g id="Canvas__sorting-list2">
												<g id="Group3__sorting-list">
													<g id="Rectangle2__sorting-list">
														<g id="Vector__sorting-list">
															<g id="Vector__sorting-list2">
																<use xlink:href="#path0_fill__sorting-list" transform="translate(11384 -837)"/>
															</g>
														</g>
													</g>
													<g id="Rectangle21__sorting-list">
														<g id="Vector__sorting-list3">
															<g id="Vector__sorting-list4">
																<use xlink:href="#path0_fill__sorting-list" transform="translate(11384 -832)"/>
															</g>
														</g>
													</g>
													<g id="Rectangle22__sorting-list">
														<g id="Vector__sorting-list5">
															<g id="Vector__sorting-list6">
																<use xlink:href="#path0_fill__sorting-list" transform="translate(11384 -827)"/>
															</g>
														</g>
													</g>
													<g id="Rectangle2__sorting-list2">
														<g id="Vector__sorting-list7">
															<g id="Vector__sorting-list8">
																<use xlink:href="#path1_fill__sorting-list" transform="translate(11379 -837)"/>
															</g>
														</g>
													</g>
													<g id="Rectangle21__sorting-list2">
														<g id="Vector__sorting-list9">
															<g id="Vector__sorting-list10">
																<use xlink:href="#path1_fill__sorting-list" transform="translate(11379 -832)"/>
															</g>
														</g>
													</g>
													<g id="Rectangle22__sorting-list2">
														<g id="Vector__sorting-list11">
															<g id="Vector__sorting-list12">
																<use xlink:href="#path1_fill__sorting-list" transform="translate(11379 -827)"/>
															</g>
														</g>
													</g>
												</g>
											</g>
										</g>
									</g>
									<defs>
										<path id="path0_fill__sorting-list" d="M 0 0L 15 0L 15 3L 0 3L 0 0Z"/>
										<path id="path1_fill__sorting-list" d="M 0 0L 3 0L 3 3L 0 3L 0 0Z"/>
									</defs>
								</svg>

							</a>
						</div>
					</div>
					<div id="product_cont">
						<div class="catalog-plitka uk-grid uk-grid-width-1-1 uk-grid-width-medium-1-2 uk-grid-width-large-1-3">
							[[DocLister? &id=`product` &parents=`53` &depth=`4` &tvPrefix=`` &tvList=`product_prev,novelty,sale,sale_persent,bestseller,articul,new_price,old_price,img_prew_prod,product_brand_select` &tpl=`product_plitka_tpl` &orderBy=`menuindex ASC` &total=`12` &noneWrapOuter=`0` &filters=`AND(content:template:in:38,64;tv:product_brand_select:=:[*id*])` &prepare=`class_order_add` &prepareWrap=`count_docs_prepare` &ownerTPL=`@CODE:[+dl.wrap+]`]]
						</div>
						[[if? &is=`[+count_docs+]:>=:12` &then=`
						<div class="more-prod">
							<a href="#" start='12' class="primary-button">Показать еще</a>
						</div>
						`]]
					</div>	
					<div id='product_site'  start='12' parent='53' ajax_url='[(site_url)][~1776~]'  type='table' sort='menuindex' sortdir='ASC' total='12' filter='[*id*]'></div>	
					<div class="spinner center" style="display: none;">
						<img src="assets/templates/market/img/spinner.gif" width="60" height="60" alt="">
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