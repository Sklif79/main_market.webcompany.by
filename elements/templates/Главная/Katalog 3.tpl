name:Каталог 3
description:Index
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
		<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
		<script>
			$(document).ready(function () {
				var myMap;
				ymaps.ready(function () {
					myMap = new ymaps.Map('map', {
						center: [53.874699,27.561212],
						zoom: 12
					}, {
						searchControlProvider: 'yandex#search'
					}),
						myPlacemark = new ymaps.Placemark(myMap.getCenter(), {
						hintContent: 'Собственный значок метки',
						balloonContent: 'Это красивая метка'
					}, {
						// Опции.
						// Необходимо указать данный тип макета.
						iconLayout: 'default#image',
						// Своё изображение иконки метки.
						iconImageHref: '/assets/templates/market/img/point-map.png',
						// Размеры метки.
						iconImageSize: [30, 42],
						// Смещение левого верхнего угла иконки относительно
						// её "ножки" (точки привязки).
						iconImageOffset: [-3, -42]
					});

					myMap.geoObjects.add(myPlacemark);
					myMap.behaviors.disable('scrollZoom'); 
				});

				$('#address1').click(function () {
					myMap.center([53.874699,27.561212], 12, {
						checkZoomRange: true
					});
				});
				$('#address2').click(function () {
					myMap.center([54.874699,28.561212], 12, {
						checkZoomRange: true
					});
				});
			});
		</script>	
	</head>
	<body>

		<header class="header [+noshadow_class+]">
			{{header}}
		</header>

		<!-- --@ корзина по ховеру под корзиной в header @-- -->
		{{basket_under_header}} [[breadcrumbs_select_load]]

		<div class="container second-page">
			[+breadcrumbs_default+]

		</div>		

		{{services-main}}
		{{service_main_mobile}}

		<footer class="footer [+footer_add_class+]">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_forms_block}}
		</div>
	</body>
</html>