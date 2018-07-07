name:sotrudniki_last_tpl
description:шаблон вывода блока сотрудники последний элемент
======
[[if? &is='[+add_header_sertif_check+]:=:1' &then='<h2>[+title+]:</h2>']]
<div>[+content+]</div>
[[ddGetMultipleField? &inputString_docField=`employees` &inputString_docId=`[+id+]` &outerTpl=`employees_outer_tpl` &rowTpl=`employees_tpl`]]