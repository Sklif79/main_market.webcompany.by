name:1.3 Контакты - на всю ширину карта, вариант 2
description:Contacts 1.3
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

		<div class="second-page">
			<div class="uk-grid">

				<div class="primary-block uk-width-1-1">
					<div class="container">
						[+breadcrumbs_default+]

						[*content*]
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
					</script>
					<div class="contacts-1-3">


						<div class="info-map-wrap">
							<div class="container info-map-container">
								{{contact_phones_address_info_small_map}}
							</div>
							<div class="contact-map full-width-map">
								<div id="map"></div>
							</div>
						</div>

					</div>

					<div class="container">					
						<div class="contact-page contacts-1-3">

							<!--@- наши дилеры -@-->
							{{contact_dealers_groups_contacts}}

							<div class="separator-line"></div>

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

							<!--@- реквизиты -@-->
							[[visible_chunk? 
							&id_param_val=`99`
							&chunk_name=`contact_dealers_requisites` 
							&tv_visible_name=`requisites_contacts_visible` 
							&session_param_name=`requisites_contacts_visible`
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