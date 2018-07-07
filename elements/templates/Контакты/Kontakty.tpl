name:Контакты
description:Contacts
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

		<!-- --@ корзина по ховеру под корзиной в header @-- -->
		{{basket_under_header}} [[breadcrumbs_select_load]]

		<div class="container second-page">
			<div class="uk-grid">
				{{left_bar}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]

					[*content*]
					<div class="contact-page">
						<div class="uk-grid uk-grid-width-large-1-2 top-contact">
							<div class="contact-element">
								[[ddGetMultipleField? &inputString_docField=`contact_info` &rowTpl=`contact_info_tpl` &colDelimiter=`~~`]]
							</div>
							<div class="contact-map">
								<div id="map" style="width: 490 px; height: 380px"></div>
							</div>
							<script type="text/javascript">
								ymaps.ready(init);
								var myMap, 
									myPlacemark;
								var Vacansia_map,
									vac_Placemark;
								function init(){ 
									myMap = new ymaps.Map("map", {
										center: [53.902230,27.556422],
										zoom: 5,
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
							</script>
						</div>
						<!--@-Чанк с выводом реквизитов-@-->
						[[visible_chunk? 
						&id_param_val=`99`
						&chunk_name=`contact_dealers_requisites` 
						&tv_visible_name=`requisites_contacts_visible` 
						&session_param_name=`requisites_contacts_visible`
						]]

						<!--@-Форма обратной связи для контактов и диллеров-@-->
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
		<footer class="footer [+footer_add_class+]">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_forms_block}}
		</div>
	</body>
</html>