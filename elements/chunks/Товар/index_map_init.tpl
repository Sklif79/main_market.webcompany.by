name:index_map_init
description:Инициализация карты на главной
======
<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>

<script>
	$(document).ready(function () {


		if ( $(document).width() > 480 ) {

			var myMap;
			ymaps.ready(function () {
				myMap = new ymaps.Map('map', {//id
					center: [ [*map_index_point*] ],
					zoom: 16,
					controls: ["smallMapDefaultSet"]
				}, {
					searchControlProvider: 'yandex#search'
				}),
					myPlacemark = new ymaps.Placemark([ [*map_index_point*] ], {
					hintContent: '',
					balloonContent: ''
				},
													  {
					preset: 'islands#redDotIcon'
				});

				myMap.behaviors.disable("scrollZoom");
				myMap.geoObjects.add(myPlacemark);
			});

		} else {

			var myMap;
			ymaps.ready(function () {
				myMap = new ymaps.Map('map', {//id
					center: [ [*map_index_point*] ],
					zoom: 16,
					controls: []
				}, {
					searchControlProvider: 'yandex#search'
				}),
					myPlacemark = new ymaps.Placemark([ [*map_index_point*] ], {
					hintContent: '',
					balloonContent: ''
				},
													  {
					preset: 'islands#redDotIcon'
				});

				myMap.geoObjects.add(myPlacemark);
			});

		}



	});

</script>

<!--@- <script>
/*
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
}),
myPlacemark2 = new ymaps.Placemark([54.874699,28.561212], {
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
}),

myMap.geoObjects.add(myPlacemark).add(myPlacemark2);
myMap.behaviors.disable('scrollZoom'); 
});



$('#address1').click(function () {
myMap.panTo([53.874699,27.561212], {
// Задержка между перемещениями.
delay: 1500
});
});
$('#address2').click(function () {
myMap.panTo([54.874699,28.561212], {
// Задержка между перемещениями.
delay: 1500
});
});

});
*/
</script>-@-->