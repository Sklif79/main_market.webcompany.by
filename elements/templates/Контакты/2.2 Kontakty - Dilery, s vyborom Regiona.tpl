name:2.2 Контакты - Дилеры, с выбором Региона
description:Contacts-Dealers 2.2
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
		<!--maps-->
		<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
	</head>
	<body>
		<header class="header [+noshadow_class+]">
			{{header}}
		</header>

		<script type="text/javascript">
			$(document).ready(function(){
				ymaps.ready(init);
				var myMap, 
					myPlacemark;
				var Vacansia_map,
					vac_Placemark;
				function init(){ 
					myMap = new ymaps.Map("map", {
						center: [53.902230,27.556422],
						zoom: 5,
						controls: ['zoomControl']
					}),
						clusterer = new ymaps.Clusterer({
						preset: 'islands#redClusterIcons',
						groupByCoordinates: false
					}),

						geoObjects = [];
					[[ddGetMultipleField? &inputString_docField=`map_contacts` &rowTpl=`map_contacts_tpl`]]

					  clusterer.add(geoObjects);
					  myMap.geoObjects.add(clusterer);			

					  myMap.setBounds(clusterer.getBounds(), {
					  checkZoomRange: true
					  });
					  myMap.behaviors.disable("scrollZoom");
					  }
					  });

		</script>

		<!-- --@ корзина по ховеру под корзиной в header @-- -->
		{{basket_under_header}} [[breadcrumbs_select_load]]

		<div class="second-page">
			<div class="uk-grid">

				<div class="primary-block uk-width-1-1">
					<div class="container">
						[+breadcrumbs_default+]

						[*content*]
					</div>

					<div class="contacts-info-wrap contacts-2-2">
						<div class="container">
							<div class="contact-info-wrap">
								<div>
									<select id="js-select-region" class="custom-select" name="select-region">
										<option></option>
										[[DocLister? &id=`select_region` &parents=`1180` &depth=`0` &tvPrefix=`` &tvList=`` &tpl=`@CODE:<option value="[+id+]">[+title+]</option>` &orderBy=`menuindex ASC` &total=`all` &noneWrapOuter=`0`]]
									</select>

									<select id="js-select-city" class="custom-select" name="select-city" disabled>
										<option></option>
									</select>
								</div>

								<div class="contact-info-el-wrap">
									<div class="contact-info-el contact-info__phone">
										<svg width="48" height="48" viewBox="0 0 48 48" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
											<g id="Canvas__contacts-gray-phone" transform="translate(-12175 851)">
												<g id="Group__contacts-gray-phone">
													<g id="Ellipse__contacts-gray-phone">
														<use xlink:href="#path0__contacts-gray-phone" transform="translate(12175 -851)" fill="#F1F1F1"/>
													</g>
													<g id="phone-call-button__contacts-gray-phone">
														<g id="Group2__contacts-gray-phone">
															<g id="call__contacts-gray-phone">
																<g id="Vector__contacts-gray-phone">
																	<use xlink:href="#path1__contacts-gray-phone" transform="translate(12190 -836)"/>
																</g>
															</g>
														</g>
													</g>
												</g>
											</g>
											<defs>
												<path id="path0__contacts-gray-phone" d="M 48 24C 48 37.2548 37.2548 48 24 48C 10.7452 48 0 37.2548 0 24C 0 10.7452 10.7452 0 24 0C 37.2548 0 48 10.7452 48 24Z"/>
												<path id="path1__contacts-gray-phone" d="M 3.6 7.8C 5 10.6 7.4 12.9 10.2 14.4L 12.4 12.2C 12.7 11.9 13.1 11.8 13.4 12C 14.5 12.4 15.7 12.6 17 12.6C 17.6 12.6 18 13 18 13.6L 18 17C 18 17.6 17.6 18 17 18C 7.6 18 0 10.4 0 1C 0 0.4 0.4 0 1 0L 4.5 0C 5.1 0 5.5 0.4 5.5 1C 5.5 2.2 5.7 3.4 6.1 4.6C 6.2 4.9 6.1 5.3 5.9 5.6L 3.6 7.8Z"/>
											</defs>
										</svg>

										<div>
											<div class="contact-info__title">Телефоны:</div>

											<div class="contact-info__inner">
												[[ddGetMultipleField? &inputString_docField=`contact_dealers_phones` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_phones_tpl`]]
											</div>
										</div>
									</div>

									<div class="contact-info-el">
										<svg width="48" height="48" viewBox="0 0 48 48" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
											<g id="Canvas__contacts-gray-mail" transform="translate(-12258 768)">
												<g id="Group__contacts-gray-mail">
													<g id="Ellipse__contacts-gray-mail">
														<use xlink:href="#path0__contacts-gray-mail" transform="translate(12258 -768)" fill="#F1F1F1"/>
													</g>
													<g id="black-envelope-email-symbol__contacts-gray-mail">
														<g id="Group2__contacts-gray-mail">
															<g id="email__contacts-gray-mail">
																<g id="Vector__contacts-gray-mail">
																	<use xlink:href="#path1__contacts-gray-mail" transform="translate(12272 -752)"/>
																</g>
															</g>
														</g>
													</g>
												</g>
											</g>
											<defs>
												<path id="path0__contacts-gray-mail" d="M 48 24C 48 37.2548 37.2548 48 24 48C 10.7452 48 0 37.2548 0 24C 0 10.7452 10.7452 0 24 0C 37.2548 0 48 10.7452 48 24Z"/>
												<path id="path1__contacts-gray-mail" d="M 18 0L 2 0C 0.9 0 0 0.9 0 2L 0 14C 0 15.1 0.9 16 2 16L 18 16C 19.1 16 20 15.1 20 14L 20 2C 20 0.9 19.1 0 18 0ZM 18 4L 10 9L 2 4L 2 2L 10 7L 18 2L 18 4Z"/>
											</defs>
										</svg>

										<div>
											[[ddGetMultipleField? &inputString_docField=`contact_dealers_email` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_adress_tpl`]]					
										</div>									
									</div>
								</div>


							</div>
						</div>
						<div class="contact-map full-width-map">
							<div id="map"></div>
						</div>
					</div>

					<div class="container">					
						<div class="contact-page contacts-2-2">

							<!--@- наши дилеры -@-->
							{{contact_dealers_groups_contacts}}

							<div class="separator-line"></div>

							<!--@- реквизиты -@-->
							[[visible_chunk? 
							&id_param_val=`99`
							&chunk_name=`contact_dealers_requisites` 
							&tv_visible_name=`requisites_contacts_visible` 
							&session_param_name=`requisites_contacts_visible`
							]]

							<!--@- обратная связь -@-->
							[[visible_chunk? 
							&id_param_val=`99`
							&chunk_name=`contact_dealers_feedback_form` 
							&tv_visible_name=`feedback_contacts_visible` 
							&session_param_name=`feedback_contacts_visible`
							]]

							<!--@- Наши специалисты -@-->
							[[visible_chunk? 
							&id_param_val=`99`
							&chunk_name=`contact_our_specialists` 
							&tv_visible_name=`оur_team_contacts_visible` 
							&session_param_name=`оur_team_contacts_visible`
							]]

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