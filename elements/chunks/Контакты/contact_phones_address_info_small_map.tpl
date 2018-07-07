name:contact_phones_address_info_small_map
description:Контакты телефоны малая карта
======
<div class="contact-info-wrap">
	<div class="contact-info-el">
		<svg width="48" height="48" viewBox="0 0 48 48" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
			<g id="Canvas__contacts-gray-phone" transform="translate(-12175 851)">
				<g id="Group__contacts-gray-phone">
					<g id="Ellipse__contacts-gray-phone">
						<use xlink:href="#path0__contacts-gray-phone" transform="translate(12175 -851)" fill="#F1F1F1"/>
					</g>
					<g id="phone-call-button__contacts-gray-phone">
						<g id="Group2__contacts-gray-phone">
							<g id="call__contacts-gray-phone">
								<g id="Vector__contacts-gray-phone">
									<use xlink:href="#path1__contacts-gray-phone" transform="translate(12190 -836)"/>
								</g>
							</g>
						</g>
					</g>
				</g>
			</g>
			<defs>
				<path id="path0__contacts-gray-phone" d="M 48 24C 48 37.2548 37.2548 48 24 48C 10.7452 48 0 37.2548 0 24C 0 10.7452 10.7452 0 24 0C 37.2548 0 48 10.7452 48 24Z"/>
				<path id="path1__contacts-gray-phone" d="M 3.6 7.8C 5 10.6 7.4 12.9 10.2 14.4L 12.4 12.2C 12.7 11.9 13.1 11.8 13.4 12C 14.5 12.4 15.7 12.6 17 12.6C 17.6 12.6 18 13 18 13.6L 18 17C 18 17.6 17.6 18 17 18C 7.6 18 0 10.4 0 1C 0 0.4 0.4 0 1 0L 4.5 0C 5.1 0 5.5 0.4 5.5 1C 5.5 2.2 5.7 3.4 6.1 4.6C 6.2 4.9 6.1 5.3 5.9 5.6L 3.6 7.8Z"/>
			</defs>
		</svg>


		<div>
			<div class="contact-info__title">Телефоны:</div>

			<div class="contact-info__inner">
				[[ddGetMultipleField? &inputString_docField=`contact_dealers_phones` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_phones_tpl` &totalRows=`4`]]
			</div>
			[[ddGetMultipleField? &inputString_docField=`contact_dealers_phones` &inputString_docId=`[*id*]` &rowTpl=`@CODE:<li><a href="tel:[+col1+]">[+col0+]</a></li>` &outerTpl=`contact_dealers_phones_hidden` &startRow=`4`]]
		</div>
	</div>

	<div class="contact-info-el">
		<svg width="48" height="48" viewBox="0 0 48 48" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
			<g id="Canvas__contacts-gray-location" transform="translate(-12258 851)">
				<g id="Group__contacts-gray-location">
					<g id="Ellipse__contacts-gray-location">
						<use xlink:href="#path0__contacts-gray-location" transform="translate(12258 -851)" fill="#F1F1F1"/>
					</g>
					<g id="placeholder__contacts-gray-location">
						<g id="Group2__contacts-gray-location">
							<g id="Vector__contacts-gray-location">
								<use xlink:href="#path1__contacts-gray-location" transform="translate(12274 -837)"/>
							</g>
						</g>
					</g>
				</g>
			</g>
			<defs>
				<path id="path0__contacts-gray-location" d="M 48 24C 48 37.2548 37.2548 48 24 48C 10.7452 48 0 37.2548 0 24C 0 10.7452 10.7452 0 24 0C 37.2548 0 48 10.7452 48 24Z"/>
				<path id="path1__contacts-gray-location" d="M 8 0C 3.58855 0 0 3.36426 0 7.5C 0 9.0756 0.522809 10.5871 1.5101 11.8726L 1.72005 12.1484L 7.46679 19.7498C 7.59276 19.9072 7.79069 20 8 20C 8.20926 20 8.40721 19.9072 8.53319 19.7498L 14.2083 12.2388L 14.4883 11.875C 15.4772 10.5871 16 9.0756 16 7.5C 16 3.36426 12.4115 0 8 0ZM 8 10C 6.52926 10 5.33333 8.87879 5.33333 7.5C 5.33333 6.12121 6.52926 5 8 5C 9.47069 5 10.6667 6.12121 10.6667 7.5C 10.6667 8.87879 9.47071 10 8 10Z"/>
			</defs>
		</svg>


		<div>
			[[ddGetMultipleField? &inputString_docField=`contact_dealers_adress` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_adress_tpl` &totalRows=`1`]]
			[[ddGetMultipleField? &inputString_docField=`contact_dealers_adress` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_adress_hidden_tpl` &outerTpl=`contact_dealers_adress_hidden` &startRow=`1` &placeholders=`visible_name=Показать все адреса`]]
		</div>
	</div>

	<div class="contact-info-el">
		<svg width="48" height="48" viewBox="0 0 48 48" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
			<g id="Canvas__contacts-gray-mail" transform="translate(-12258 768)">
				<g id="Group__contacts-gray-mail">
					<g id="Ellipse__contacts-gray-mail">
						<use xlink:href="#path0__contacts-gray-mail" transform="translate(12258 -768)" fill="#F1F1F1"/>
					</g>
					<g id="black-envelope-email-symbol__contacts-gray-mail">
						<g id="Group2__contacts-gray-mail">
							<g id="email__contacts-gray-mail">
								<g id="Vector__contacts-gray-mail">
									<use xlink:href="#path1__contacts-gray-mail" transform="translate(12272 -752)"/>
								</g>
							</g>
						</g>
					</g>
				</g>
			</g>
			<defs>
				<path id="path0__contacts-gray-mail" d="M 48 24C 48 37.2548 37.2548 48 24 48C 10.7452 48 0 37.2548 0 24C 0 10.7452 10.7452 0 24 0C 37.2548 0 48 10.7452 48 24Z"/>
				<path id="path1__contacts-gray-mail" d="M 18 0L 2 0C 0.9 0 0 0.9 0 2L 0 14C 0 15.1 0.9 16 2 16L 18 16C 19.1 16 20 15.1 20 14L 20 2C 20 0.9 19.1 0 18 0ZM 18 4L 10 9L 2 4L 2 2L 10 7L 18 2L 18 4Z"/>
			</defs>
		</svg>

		<div>
			[[ddGetMultipleField? &inputString_docField=`contact_dealers_email` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_adress_tpl` &totalRows=`1`]]
			[[ddGetMultipleField? &inputString_docField=`contact_dealers_email` &inputString_docId=`[*id*]` &rowTpl=`contact_dealers_adress_hidden_tpl` &outerTpl=`contact_dealers_adress_hidden` &startRow=`1` &placeholders=`visible_name=Показать все email`]]									
		</div>									
	</div>

</div>