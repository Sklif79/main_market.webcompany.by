name:card_sertificates
description:Сертификаты в карточке товара
======
[[if? &is=`[*certificate*]:empty` &then=`` &else=`
<div class="sertificates-wrap">
	<h4>[+block_name+]</h4>

	<div class="sertificates">
		[[ddGetMultipleField? &inputString_docField=`certificate` &rowTpl=`certificate_card_tpl`]]
	</div>
</div>
`]]