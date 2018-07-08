name:form_news_subscribe_tpl
description:Шаблон формы подписаться на новости, модуль
======
<form class="footer-subscribe" action="[~[*id*]~]?type=subscribe" method="post" name="[+formname+]" onsubmit="submitAjax_[+formname+]();return false;">
	<input type="hidden" name="token" value="[+token+]">
	<div class="footer-subscribe__title">
		<svg width="48" height="24" viewBox="0 0 48 24" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
			<g id="Canvas__footer-letter">
				<g id="mail__footer-letter">
					<g id="Group__footer-letter">
						<g id="Group_2__footer-letter">
							<g id="Vector__footer-letter">
								<path d="M 29.0192 24L 2.20366 24C 1.4975 24 0.882059 23.7061 0.469702 23.1727C 0.0583762 22.6404 -0.0900726 21.9437 0.0532214 21.2132L 3.68815 2.56688C 3.96546 1.15063 5.30252 -3.32209e-08 6.67052 -3.32209e-08L 33.4861 -3.32209e-08C 34.1933 -3.32209e-08 34.8077 0.293918 35.22 0.827324C 35.6314 1.35964 35.7798 2.05633 35.6365 2.78677L 32.0016 21.4331C 31.7253 22.8483 30.3872 24 29.0192 24ZM 6.67052 1.08858C 5.78189 1.08858 4.87779 1.86692 4.69739 2.78786L 1.06246 21.4331C 0.984117 21.837 1.05731 22.2115 1.26967 22.4858C 1.48204 22.7612 1.81295 22.9125 2.20366 22.9125L 29.0192 22.9125C 29.9089 22.9125 30.8119 22.1353 30.9923 21.2143L 34.6273 2.56797C 34.7056 2.1641 34.6324 1.78963 34.4201 1.51531C 34.2087 1.2399 33.8768 1.08858 33.4861 1.08858L 6.67052 1.08858Z" transform="translate(12.3105 0)"  />
								</g>
							<g id="Vector_2__footer-letter">
								<path d="M 12.4198 13.1732C 11.6456 13.1732 10.8704 12.8619 10.3302 12.2599L 0.141914 0.919054C -0.0539554 0.701338 -0.0467381 0.356256 0.161502 0.150514C 0.366649 -0.0552281 0.694472 -0.0486965 0.889311 0.171197L 11.0776 11.511C 11.6797 12.1761 12.7786 12.2828 13.4796 11.7374L 28.4615 0.105882C 28.6894 -0.0715572 29.012 -0.021482 29.1821 0.222361C 29.3502 0.465115 29.3007 0.804753 29.0718 0.983281L 14.0888 12.6137C 13.6043 12.9904 13.0126 13.1732 12.4198 13.1732Z" transform="translate(17.4404 1.5694)" />
							</g>
						</g>
						<g id="Vector_3__footer-letter">
							<path d="M 7.29768 1.08858L 0.515446 1.08858C 0.23092 1.08858 0 0.84474 0 0.544291C 0 0.243842 0.23092 -4.40177e-07 0.515446 -4.40177e-07L 7.29768 -4.40177e-07C 7.58221 -4.40177e-07 7.81313 0.243842 7.81313 0.544291C 7.81313 0.84474 7.58221 1.08858 7.29768 1.08858Z" transform="translate(5.1543 2.98492)" />
						</g>
						<g id="Vector_4__footer-letter">
							<path d="M 11.078 1.08858L 0.515446 1.08858C 0.23092 1.08858 0 0.844741 0 0.544292C 0 0.243843 0.23092 3.98651e-07 0.515446 3.98651e-07L 11.078 3.98651e-07C 11.3625 3.98651e-07 11.5934 0.243843 11.5934 0.544292C 11.5934 0.844741 11.3625 1.08858 11.078 1.08858Z" transform="translate(0 10.2424)"  />
						</g>
						<g id="Vector_5__footer-letter">
							<path d="M 5.66475 1.08858L 0.515446 1.08858C 0.23092 1.08858 1.14044e-07 0.844741 1.14044e-07 0.544292C 1.14044e-07 0.243843 0.23092 3.98651e-07 0.515446 3.98651e-07L 5.66475 3.98651e-07C 5.94928 3.98651e-07 6.1802 0.243843 6.1802 0.544292C 6.1802 0.844741 5.94928 1.08858 5.66475 1.08858Z" transform="translate(3.69434 16.774)"  />
						</g>
					</g>
				</g>
			</g>
		</svg>
		<div>
			Подпишитесь <span>на новости и акции:</span>
		</div>
	</div>
	<input type="text" name="email" tabindex="701" placeholder='Ваша электронная почта...' value='[+email+]'>
	<input type="hidden" name="sub" value="1">
	<input type="submit" value='Подписаться'>
</form>