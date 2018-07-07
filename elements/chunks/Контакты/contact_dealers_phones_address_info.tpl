name:contact_dealers_phones_address_info
description:Контактные телефоны, email и контакты для контакты и диллеры
======
<div class="contact-info-wrap">
	<div class="contact-info-el">
		<img src="assets/templates/market/img/update/contact-phone.svg" class="contact-info__img" alt="">

		<div>
			<div class="contact-info__title">Телефоны:</div>
			<div class="contact-info__inner">
				[[ddGetMultipleField? &inputString_docField=`contact_dealers_phones` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_phones_tpl` &totalRows=`4`]]
			</div>

			[[ddGetMultipleField? &inputString_docField=`contact_dealers_phones` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_phones_tpl` &outerTpl=`contact_dealers_phones_hidden` &startRow=`4`]]
		</div>
	</div>

	<div class="contact-info-el">
		<img src="assets/templates/market/img/update/contact-loc.svg" class="contact-info__img" alt="">

		<div>
			[[ddGetMultipleField? &inputString_docField=`contact_dealers_adress` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_adress_tpl` &totalRows=`1`]]
			[[ddGetMultipleField? &inputString_docField=`contact_dealers_adress` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_adress_hidden_tpl` &outerTpl=`contact_dealers_adress_hidden` &startRow=`1` &placeholders=`visible_name=Показать все адреса`]]
		</div>
	</div>

	<div class="contact-info-el">
		<img src="assets/templates/market/img/update/contact-mail.svg" class="contact-info__img" alt="">

		<div>
			[[ddGetMultipleField? &inputString_docField=`contact_dealers_email` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_adress_tpl` &totalRows=`1`]]
			[[ddGetMultipleField? &inputString_docField=`contact_dealers_email` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_adress_hidden_tpl` &outerTpl=`contact_dealers_adress_hidden` &startRow=`1` &placeholders=`visible_name=Показать все email`]]
		</div>									
	</div>

</div>