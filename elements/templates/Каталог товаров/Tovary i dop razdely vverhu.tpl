name:Товары и доп разделы вверху
description:Product Group
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


					[[DocLister? &id=`subcat_prev_pl` &parents=`[*id*]` &depth=`0` &tvPrefix=`` &tvList=`subcat_img_prew` &tpl=`subcat_prev_pl_tpl` &ownerTPL=`subcat_prev_pl_outer_tpl` &noneWrapOuter=`0` &orderBy=`menuindex ASC` &total=`all` &filters=`AND(content:isfolder:=:1)`]]

					[[if? &is=`[*content*]:empty` &then=`` &else=`<div class="catalog_content">[*content*]</div>`]]

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
						<div class="catalog-plitka uk-grid">
							[[DocLister? &id=`product` &parents=`[*id*]` &depth=`1` &tvPrefix=`` &tvList=`product_prev,novelty,sale,sale_persent,bestseller,articul,new_price,old_price,img_prew_prod` &tpl=`product_plitka_tpl` &orderBy=`menuindex ASC` &total=`all` &display=`12` &paginate=`pages` &TplCurrentPage=`pages_TplCurrentPage` &TplDotsPage=`pages_TplDotsPage` &TplPage=`pages_TplPage` &TplWrapPaginate=`pages_TplWrapPaginate` &TplPrevP=`pages_TplPrevP` &TplNextP=`pages_TplNextP` &pageAdjacents=`1` &noneWrapOuter=`0` &filters=`AND(content:template:in:38,64)` &prepare=`class_order_add`]]
							[[count_docs_prepare]]
						</div>
						<div class="more-prod">
							<a href="#" start='12' class="primary-button">
                                <svg width="16" height="15" viewBox="0 0 16 15" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <g id="Canvas__update-arrows" transform="translate(-43067 -1599)">
                                        <g id="update-arrows__update-arrows">
                                            <g id="Group__update-arrows">
                                                <g id="Group__update-arrows2">
                                                    <g id="Vector__update-arrows">
                                                        <use xlink:href="#path0_fill__update-arrows" transform="translate(43067.4 1599)"/>
                                                    </g>
                                                    <g id="Vector">
                                                        <use xlink:href="#path1_fill__update-arrows" transform="translate(43067 1605.72)"/>
                                                    </g>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                    <defs>
                                        <path id="path0_fill__update-arrows" d="M 15.1743 1.30227C 14.8606 1.23561 14.5519 1.43352 14.4847 1.74405L 14.0627 3.69419C 12.719 1.42437 10.2527 -1.22843e-08 7.54958 -1.22843e-08C 3.38672 -1.22843e-08 1.41782e-09 3.35349 1.41782e-09 7.47561C 1.41782e-09 7.79317 0.259984 8.05066 0.580737 8.05066C 0.901443 8.05066 1.16147 7.79317 1.16147 7.47561C 1.16147 3.9877 4.02716 1.15009 7.54958 1.15009C 9.846 1.15009 11.9407 2.36473 13.0747 4.29873L 11.1386 3.88787C 10.8249 3.8213 10.5162 4.01916 10.4491 4.32969C 10.3819 4.64021 10.5817 4.94596 10.8953 5.01248L 14.2188 5.71771C 14.2752 5.72972 14.3325 5.73317 14.3891 5.72848C 14.4833 5.72061 14.5751 5.69002 14.6559 5.63822C 14.7852 5.55537 14.876 5.42504 14.9083 5.27594L 15.6206 1.98502C 15.6877 1.67454 15.4879 1.36889 15.1743 1.30227Z"/>
                                        <path id="path1_fill__update-arrows" d="M 14.9555 0.000366923C 14.6349 0.0108558 14.3836 0.276665 14.3942 0.594045C 14.4505 2.28275 13.8394 3.89201 12.6732 5.1256C 11.5072 6.35905 9.9258 7.06917 8.22043 7.12492C 8.14935 7.12722 8.07864 7.12837 8.00784 7.12837C 5.78264 7.12828 3.73278 5.98394 2.57511 4.12985L 4.59361 4.66579C 4.9034 4.748 5.22188 4.56606 5.30495 4.25926C 5.38802 3.9525 5.20422 3.63719 4.89443 3.55485L 1.61146 2.68326C 1.4627 2.64383 1.30413 2.66444 1.1708 2.74063C 1.03737 2.81681 0.940033 2.94244 0.900125 3.08975L 0.0199601 6.34065C -0.0631086 6.6474 0.120683 6.96271 0.430472 7.04501C 0.48088 7.0584 0.531427 7.06484 0.581231 7.06484C 0.837591 7.06484 1.07226 6.89536 1.1418 6.63852L 1.63655 4.81139C 3.01285 6.95733 5.4085 8.27856 8.00756 8.27847C 8.09105 8.27847 8.175 8.27713 8.25881 8.27437C 10.2742 8.2084 12.1431 7.36929 13.5213 5.91153C 14.8994 4.45376 15.6216 2.55183 15.555 0.556092C 15.5445 0.238758 15.2759 -0.010904 14.9555 0.000366923Z"/>
                                    </defs>
                                </svg>

								Показать еще [+count_docs+]
							</a>
						</div>
						[+product.pages+]
					</div>
					<div id='product_site'  start='12' parent='[*id*]' ajax_url='[(site_url)][~84~]'  type='table' sort='menuindex' sortdir='ASC' total='12'></div>
					<div class="spinner center" style="display: none;">
						<img src="assets/templates/market/img/spinner.gif" width="60" height="60" alt="">
					</div>
					{{bottom_text_prod}}
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