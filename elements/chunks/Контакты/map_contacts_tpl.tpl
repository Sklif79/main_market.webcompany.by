name:map_contacts_tpl
description:шаблон вывода точек на карте
======
[+rowNumber.zeroBased+]
geoObjects[ [+rowNumber.zeroBased+] ] = new ymaps.Placemark([[+col0+]], {
hintContent: '[+col1+]',
balloonContent: '[+col2+]',
balloonContentBody: '[+col2+]',
clusterCaption: '[+col1+]'
},{
iconLayout: 'default#image',
iconImageHref: 'assets/templates/market/img/map-point.png',
iconImageSize: [90, 73],
iconImageOffset: [-27, -77]
});