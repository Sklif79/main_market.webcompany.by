name:service_gallery_prew_tpl
description:шаблон вывода превью изображений галереи услуги
======
<a data-slide-index="[+rowNumber.zeroBased+]" href=""><img src="[[if? &is=`[+col1+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`w=110,h=69,f=png,q=95,far=C,bg=ffffff`]]` &else=`[[phpthumb? &input=`[+col1+]` &options=`w=110,h=69,f=png,q=95,far=C,bg=ffffff`]]`]]"/></a>