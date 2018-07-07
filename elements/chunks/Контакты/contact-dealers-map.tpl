name:contact-dealers-map
description:Вывод карты на странице контакты и диллеры
======
<div class="contact-map full-width-map">
	<div id="map"></div>
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