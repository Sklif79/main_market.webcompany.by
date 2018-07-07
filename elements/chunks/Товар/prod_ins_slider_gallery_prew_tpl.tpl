name:prod_ins_slider_gallery_prew_tpl
description:галерея товар подробнее изображения превью шаблон вывода элемента
======
<a data-slide-index="[+rowNumber.zeroBased+]" href="" class="border"><img src="[[if? &is=`[+col1+]:isempty` &then=`[[phpthumb? &input=`[+col0+]` &options=`w=60,h=60,f=png,q=95,far=C,bg=ffffff`]]` &else=`[[phpthumb? &input=`[+col1+]` &options=`w=60,h=60,f=png,q=95,far=C,bg=ffffff`]]`]]"/></a>