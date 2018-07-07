name:staff_contacts_info_tpl
description:Шаблон вывода одного сотрудника в блоке персонал
======
<div class="our-specialists-el">
	<div class="our-specialists-wrap-inner">
		<div class="our-specialists__img">
			<img src="[[phpthumb? &input='[+col0+]' &options='w=320,h=400,f=png,q=95,zc=C,bg=ffffff']]" alt="[+col1+]">
		</div>
		<div class="our-specialists-info">
			<div class="our-specialists__name">
				[+col1+]
			</div>

			[[if? &is=`[+col2+]:empty` &then=`` &else=`
			<div class="our-specialists__post">
				[+col2+]
			</div>
			`]]

			[[if? &is=`[+col3+]:empty` &then=`` &else=`
			<div class="our-specialists__mail">
				<svg width="16" height="12" viewBox="0 0 16 12" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
					<g id="Canvas__mail-ico-fill" transform="translate(-11669 837)">
						<g id="black-envelope-email-symbol__mail-ico-fill">
							<g id="Group__mail-ico-fill">
								<g id="email__mail-ico-fill">
									<g id="Vector__mail-ico-fill">
										<use xlink:href="#path0__mail-ico-fill" transform="translate(11669 -837)" />
									</g>
								</g>
							</g>
						</g>
					</g>
					<defs>
						<path id="path0__mail-ico-fill" d="M 14.4 0L 1.6 0C 0.72 0 0 0.675 0 1.5L 0 10.5C 0 11.325 0.72 12 1.6 12L 14.4 12C 15.28 12 16 11.325 16 10.5L 16 1.5C 16 0.675 15.28 0 14.4 0ZM 14.4 3L 8 6.75L 1.6 3L 1.6 1.5L 8 5.25L 14.4 1.5L 14.4 3Z" />
					</defs>
				</svg>
				[+col3+]
			</div>`]]

			[[if? &is=`[+col3+]:empty` &then=`` &else=`
			<div class="our-specialists__phone">
				<svg width="13" height="13" viewBox="0 0 13 13" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
					<g id="Canvas__phone-call-fill" transform="translate(-11621 837)">
						<g id="phone-call-button__phone-call-fill">
							<g id="Group__phone-call-fill">
								<g id="call__phone-call-fill">
									<g id="Vector__phone-call-fill">
										<use xlink:href="#path0__phone-call-fill" transform="translate(11621 -837)" />
									</g>
								</g>
							</g>
						</g>
					</g>
					<defs>
						<path id="path0__phone-call-fill" d="M 2.6 5.63333C 3.61111 7.65556 5.34444 9.31667 7.36667 10.4L 8.95556 8.81111C 9.17219 8.59447 9.46111 8.52225 9.67778 8.66667C 10.4722 8.95556 11.3389 9.1 12.2778 9.1C 12.7111 9.1 13 9.38889 13 9.82222L 13 12.2778C 13 12.7111 12.7111 13 12.2778 13C 5.48889 13 0 7.51111 0 0.722222C 0 0.288889 0.288889 0 0.722222 0L 3.25 0C 3.68333 0 3.97222 0.288889 3.97222 0.722222C 3.97222 1.58889 4.11667 2.45556 4.40556 3.32222C 4.47778 3.53889 4.40556 3.82778 4.26111 4.04444L 2.6 5.63333Z" />
					</defs>
				</svg>
				[+col4+]
			</div>`]]
		</div>
	</div>
</div>