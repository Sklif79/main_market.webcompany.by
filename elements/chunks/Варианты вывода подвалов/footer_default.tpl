name:footer_default
description:нижняя часть сайта (подвал) вариант первый стандартный
======
<div class="footer-top container">
	<div class="flex-block">
		[[if? &is=`[*logo@1*]:empty` &then=`@TPL:logo_footer_empty` &else=`@TPL:logo_footer`]]
		[[ddGetMultipleField? &inputString_docField=`social_buttons` &inputString_docId=`1` &outerTpl=`social_buttons_footer_outer_tpl` &rowTpl=`social_buttons_footer_tpl`]]
	</div>
	<div class="flex-block">
		<div class="phone">
			<!--<span></span>-->
			<svg width="35" height="35" viewBox="0 0 35 35" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
				<g id="Canvas__footer-phone-default" fill="none">
					<g id="Group2__footer-phone-default">
						<g id="Ellipse21__footer-phone-default">
							<circle cx="17.5" cy="17.5" r="16.5" stroke-width="2"/>
						</g>
						<g id="call-answer__footer-phone-default">
							<g id="Group__footer-phone-default">
								<g id="Group_2__footer-phone-default">
									<g id="Group_3__footer-phone-default">
										<g id="Vector__footer-phone-default">
											<path d="M 19.2478 15.538L 16.2071 12.497C 15.6014 11.8937 14.5985 11.9121 13.9717 12.539L 12.4398 14.0706C 12.343 14.0173 12.2429 13.9616 12.1375 13.9024C 11.1701 13.3664 9.84612 12.6318 8.45285 11.2375C 7.05545 9.84024 6.3201 8.51417 5.78244 7.54616C 5.72571 7.44361 5.67135 7.34473 5.61767 7.25083L 6.6458 6.22422L 7.15127 5.71813C 7.77898 5.09025 7.79629 4.08757 7.19206 3.4826L 4.15137 0.441235C 3.54714 -0.162886 2.54372 -0.144559 1.91601 0.48332L 1.05904 1.34521L 1.08246 1.36846C 0.795106 1.73512 0.554985 2.158 0.376294 2.61403C 0.211575 3.04812 0.109022 3.46235 0.0621287 3.87743C -0.339374 7.20598 1.18168 10.248 5.30961 14.376C 11.0157 20.0817 15.614 19.6506 15.8124 19.6296C 16.2444 19.578 16.6585 19.4747 17.0793 19.3113C 17.5314 19.1347 17.954 18.8949 18.3204 18.6082L 18.3391 18.6248L 19.2073 17.7747C 19.8337 17.1469 19.8517 16.1439 19.2478 15.538Z" transform="matrix(0.258819 0.965926 -0.965926 0.258819 24.9746 6)"/>
										</g>
									</g>
								</g>
							</g>
						</g>
					</g>
				</g>
			</svg>
			[[GetPageParams? &iddoc=`1` &field=`footer_contacts_phone`]]
		</div>
		<div class="callback-block">
			<a href="#callback" data-uk-modal="">Заказать звонок</a>
		</div>
	</div>
</div>
<div class="footer-center">
	{{footer_menu}}
</div>
<div class="webcompany">
	<div class="container">
		<div>[[this_year]] Все права защищенны</div>
		<div class="sitemap"><a href="[~95~]">Карта сайта</a></div>
		<div class="develop">Разработка сайта: <a href="http://webcompany.by" target="_blank">
			<svg width="210" height="92" viewBox="0 0 210 92" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
				<g id="Canvas__webcompany-logo">
					<g id="logo__webcompany-logo">
						<g id="Vector__webcompany-logo">
							<path d="M 60.3218 51.3964L 43.5489 51.3964L 35.878 23.9337L 28.2345 51.3964L 11.4273 51.3964L -4.19907e-07 -1.25714e-06L 16.9311 -1.25714e-06L 21.3273 23.2266L 27.7598 -1.25714e-06L 43.9686 -1.25714e-06L 50.4149 23.2128L 54.818 -1.25714e-06L 71.6803 -1.25714e-06L 60.3218 51.3964ZM 45.4064 48.9522L 58.361 48.9522L 68.6325 2.45791L 56.8337 2.45791L 50.8552 33.9851L 42.1041 2.45791L 29.6243 2.45791L 20.8801 34.04L 14.9084 2.45791L 3.05462 2.45791L 13.4224 48.966L 26.377 48.966L 35.8711 14.8161L 45.4064 48.9522Z" transform="translate(0 9.41327)" />
						</g>
						<g id="Vector_2__webcompany-logo">
							<path d="M 43.8035 51.3964L -2.51944e-06 51.3964L -2.51944e-06 -1.25714e-06L 43.0673 -1.25714e-06L 43.0673 12.8937L 17.6122 12.8937L 17.6122 18.249L 41.2029 18.249L 41.2029 30.6758L 17.6397 30.6758L 17.6397 37.8848L 43.7828 37.8848L 43.8035 51.3964ZM 2.44233 48.9522L 41.3543 48.9522L 41.3543 40.3084L 15.2112 40.3084L 15.2112 28.2179L 38.8087 28.2179L 38.8087 20.6657L 15.1905 20.6657L 15.1905 10.4495L 40.6456 10.4495L 40.6456 2.45791L 2.44919 2.45791L 2.44233 48.9522Z" transform="translate(76.5039 9.41327)" />
						</g>
						<g id="Vector_3__webcompany-logo">
							<path d="M 14.7502 5.06384L 10.6223 5.8122C 10.5393 5.09857 10.2024 4.43837 9.67295 3.95161C 9.13012 3.51813 8.44803 3.29611 7.75349 3.32683C 7.2817 3.30683 6.81147 3.39337 6.37786 3.58001C 5.94426 3.76665 5.55847 4.04856 5.24926 4.40473C 4.62549 5.12334 4.31361 6.32941 4.31361 8.02294C 4.31361 9.89956 4.63008 11.2269 5.26302 12.005C 5.56731 12.3831 5.95596 12.6849 6.39793 12.8863C 6.83991 13.0878 7.32297 13.1833 7.80853 13.1653C 8.52339 13.1914 9.22157 12.946 9.76238 12.4788C 10.3627 11.8363 10.7391 11.0176 10.8356 10.1444L 14.9635 10.831C 14.6649 12.4988 13.7941 14.0111 12.5005 15.1083C 11.0868 16.1356 9.36235 16.647 7.6159 16.557C 6.58782 16.6052 5.56121 16.4349 4.60407 16.0573C 3.64693 15.6797 2.7811 15.1035 2.06393 14.3668C 0.687981 12.9067 4.61898e-06 10.8836 4.61898e-06 8.29758C 4.61898e-06 5.71151 0.687981 3.67698 2.06393 2.194C 2.79296 1.45623 3.66986 0.880382 4.63727 0.504148C 5.60468 0.127915 6.64079 -0.0402311 7.67781 0.01071C 9.30769 -0.0754441 10.9226 0.359918 12.2873 1.25339C 13.5149 2.21038 14.3828 3.55307 14.7502 5.06384Z" transform="translate(7.78809 64.4785)" />
						</g>
						<g id="Vector_4__webcompany-logo">
							<path d="M 0.00314048 8.05146C 0.00906331 6.64156 0.36353 5.2549 1.0351 4.01446C 1.68708 2.75023 2.70612 1.71173 3.959 1.03475C 5.25447 0.34001 6.70576 -0.0143894 8.1763 0.00489892C 9.26836 -0.0335116 10.3566 0.154062 11.3724 0.555799C 12.3883 0.957536 13.3099 1.56475 14.0791 2.33923C 14.841 3.11674 15.4373 4.04006 15.8322 5.0536C 16.2271 6.06714 16.4124 7.14995 16.377 8.23684C 16.4107 9.33413 16.2222 10.4269 15.8226 11.4498C 15.423 12.4726 14.8207 13.4044 14.0516 14.1894C 13.2936 14.9653 12.3825 15.5758 11.3759 15.9823C 10.3694 16.3888 9.28923 16.5825 8.20382 16.5512C 6.77005 16.5489 5.3566 16.2128 4.07596 15.5694C 2.79192 14.9494 1.73721 13.9401 1.06263 12.6858C 0.326247 11.2539 -0.038059 9.6604 0.00314048 8.05146ZM 4.30299 8.27803C 4.2157 9.57676 4.6154 10.8615 5.4244 11.8825C 5.76791 12.2735 6.1911 12.5867 6.66568 12.8013C 7.14025 13.0159 7.65528 13.1269 8.1763 13.1269C 8.69733 13.1269 9.21235 13.0159 9.68693 12.8013C 10.1615 12.5867 10.5847 12.2735 10.9282 11.8825C 11.7364 10.8481 12.1334 9.55227 12.0427 8.2437C 12.1277 6.9548 11.7306 5.68026 10.9282 4.66669C 10.5847 4.27575 10.1615 3.9625 9.68693 3.74789C 9.21235 3.53329 8.69733 3.42227 8.1763 3.42227C 7.65528 3.42227 7.14025 3.53329 6.66568 3.74789C 6.1911 3.9625 5.76791 4.27575 5.4244 4.66669C 4.6154 5.68771 4.2157 6.97244 4.30299 8.27117L 4.30299 8.27803Z" transform="translate(24.752 64.5119)" />
						</g>
						<g id="Vector_5__webcompany-logo">
							<path d="M 3.77917e-06 0.36125L 3.86643 0.36125L 3.86643 2.52393C 4.43742 1.74859 5.18196 1.11704 6.04074 0.67959C 6.89952 0.242139 7.84881 0.010875 8.81298 0.00423252C 9.73289 -0.0188065 10.6431 0.196451 11.4548 0.629011C 12.2321 1.07742 12.8684 1.73376 13.2917 2.52393C 13.9077 1.74645 14.6754 1.10181 15.5483 0.629011C 16.3463 0.2127 17.2346 -0.00183279 18.1351 0.00423252C 19.165 -0.0352382 20.1866 0.201865 21.0933 0.690799C 21.9035 1.1644 22.5383 1.88698 22.9027 2.7505C 23.2488 3.80839 23.3957 4.92104 23.3362 6.03229L 23.3362 16.1523L 19.1395 16.1523L 19.1395 7.14453C 19.1395 5.57458 18.995 4.56075 18.7061 4.10304C 18.5129 3.80877 18.2449 3.57104 17.9293 3.41421C 17.6138 3.25737 17.2622 3.18707 16.9105 3.2105C 16.3154 3.21266 15.7359 3.39985 15.2524 3.74602C 14.7138 4.13107 14.3192 4.68432 14.131 5.31826C 13.857 6.38732 13.7411 7.49064 13.787 8.59318L 13.787 16.1935L 9.59038 16.1935L 9.59038 7.52214C 9.63882 6.52335 9.56257 5.52243 9.36336 4.54244C 9.24957 4.14245 9.008 3.79048 8.67539 3.54006C 8.29272 3.30202 7.84605 3.18698 7.39575 3.2105C 6.77367 3.2032 6.16411 3.38522 5.64828 3.7323C 5.11859 4.09485 4.72613 4.6243 4.53377 5.23587C 4.26168 6.30054 4.14809 7.39938 4.19665 8.49706L 4.19665 16.1866L 3.77917e-06 16.1866L 3.77917e-06 0.36125Z" transform="translate(44.0977 64.5055)" />
						</g>
						<g id="Vector_6__webcompany-logo">
							<path d="M -1.67963e-06 0.357339L 3.91458 0.357339L 3.91458 2.6848C 4.43339 1.88056 5.14211 1.21573 5.97851 0.748677C 6.85562 0.247888 7.85068 -0.0104365 8.86113 0.000321538C 9.75475 -0.00756356 10.639 0.1823 11.4503 0.55625C 12.2616 0.930201 12.9798 1.47895 13.5531 2.16301C 14.8374 3.6048 15.4795 5.61186 15.4795 8.1842C 15.4795 10.8298 14.8328 12.8895 13.5394 14.3633C 12.9679 15.0554 12.249 15.6118 11.435 15.9918C 10.6209 16.3719 9.73228 16.5661 8.83361 16.5603C 8.01049 16.5714 7.19592 16.3928 6.45322 16.0385C 5.60128 15.5813 4.83914 14.9743 4.20353 14.2466L 4.20353 22.197L 0.0068848 22.197L -1.67963e-06 0.357339ZM 4.12786 8.00569C 4.12786 9.78619 4.48102 11.0998 5.18735 11.9466C 5.4907 12.344 5.88204 12.6661 6.33077 12.8876C 6.77951 13.1092 7.27348 13.2241 7.77412 13.2236C 8.24283 13.23 8.70667 13.128 9.12922 12.9255C 9.55178 12.723 9.92155 12.4255 10.2096 12.0564C 10.8563 11.2783 11.1796 9.99902 11.1796 8.21853C 11.1796 6.55704 10.8448 5.32579 10.1752 4.52479C 9.88394 4.14613 9.50874 3.83997 9.07902 3.63032C 8.64931 3.42067 8.17676 3.31323 7.69845 3.31644C 7.21064 3.3085 6.7274 3.41129 6.28523 3.61705C 5.84307 3.82282 5.45352 4.12617 5.14606 4.5042C 4.40756 5.51617 4.05395 6.75736 4.14849 8.00569L 4.12786 8.00569Z" transform="translate(71.4951 64.5096)" />
						</g>
						<g id="Vector_7__webcompany-logo">
							<path d="M 4.26623 5.2371L 0.454836 4.55053C 0.760037 3.18123 1.54269 1.96463 2.66323 1.1177C 3.70896 0.380783 5.2615 0.0123254 7.32085 0.0123254C 8.74821 -0.0583859 10.1743 0.175682 11.5037 0.698892C 12.3092 1.04293 12.9857 1.6315 13.4369 2.38099C 13.8085 3.06298 13.9942 4.31252 13.9942 6.12964L 13.946 11.018C 13.919 12.0472 13.9858 13.0767 14.1456 14.0938C 14.3078 14.8298 14.562 15.5426 14.9023 16.2153L 10.7745 16.2153C 10.6644 15.9361 10.5291 15.5242 10.3686 14.9795C 10.2998 14.7323 10.2516 14.5675 10.2172 14.4852C 9.55392 15.1498 8.77234 15.6853 7.9125 16.0643C 7.08572 16.4139 6.19613 16.5915 5.29819 16.5861C 3.88762 16.6645 2.50231 16.1889 1.43864 15.261C 0.97781 14.841 0.611411 14.3283 0.36357 13.7567C 0.115728 13.1851 -0.00792488 12.5676 0.000769671 11.9449C -0.0148255 11.1021 0.206845 10.272 0.640583 9.54874C 1.06952 8.84588 1.69645 8.28471 2.44308 7.93531C 3.51066 7.47398 4.63144 7.14651 5.77977 6.96039C 7.16852 6.74312 8.53421 6.39837 9.85946 5.93054L 9.85946 5.51173C 9.89102 5.19835 9.85383 4.88187 9.75047 4.58428C 9.64711 4.28668 9.48005 4.01511 9.26092 3.78844C 8.5865 3.37247 7.79291 3.19138 7.00436 3.27352C 6.39056 3.23823 5.78068 3.39159 5.25692 3.71292C 4.77946 4.10898 4.43395 4.64055 4.26623 5.2371ZM 9.8801 8.66993C 9.04054 8.92525 8.18868 9.13836 7.32771 9.30845C 6.53291 9.43039 5.76218 9.67596 5.04363 10.0362C 4.79317 10.193 4.5867 10.4107 4.44352 10.6689C 4.30033 10.927 4.22513 11.2172 4.22495 11.5123C 4.22746 11.7991 4.28994 12.0822 4.40841 12.3435C 4.52688 12.6047 4.69873 12.8385 4.91293 13.0296C 5.13438 13.2426 5.39651 13.4089 5.68373 13.5186C 5.97095 13.6283 6.27737 13.6791 6.58471 13.6681C 7.3691 13.6588 8.12937 13.3962 8.75183 12.9198C 9.23013 12.5861 9.58352 12.103 9.75627 11.5467C 9.8977 10.8697 9.95319 10.1777 9.9214 9.48695L 9.8801 8.66993Z" transform="translate(89.168 64.4629)" />
						</g>
						<g id="Vector_8__webcompany-logo">
							<path d="M 14.4613 16.1875L 10.2646 16.1875L 10.2646 8.10665C 10.3238 6.99428 10.2335 5.87901 9.99628 4.79053C 9.83771 4.31819 9.53146 3.90908 9.12256 3.62336C 8.6917 3.33615 8.18199 3.18979 7.66406 3.20456C 6.96647 3.19668 6.28368 3.40542 5.71021 3.80188C 5.14656 4.17943 4.72717 4.73584 4.52 5.38097C 4.2494 6.57398 4.14064 7.79787 4.19665 9.01978L 4.19665 16.1875L -9.23796e-06 16.1875L -9.23796e-06 0.35531L 3.90083 0.35531L 3.90083 2.68277C 4.75983 1.49895 5.9942 0.639269 7.40394 0.243005C 8.81369 -0.153259 10.3162 -0.0628904 11.6681 0.499483C 12.3486 0.768774 12.9481 1.2086 13.4087 1.7765C 13.803 2.29802 14.082 2.89707 14.2274 3.53412C 14.4072 4.46121 14.4856 5.40504 14.4613 6.34904L 14.4613 16.1875Z" transform="translate(107.282 64.511)" />
						</g>
						<g id="Vector_9__webcompany-logo">
							<path d="M 13.8834 8.92537C 14.4397 8.4434 14.8802 7.84255 15.172 7.16744C 15.4638 6.49232 15.5994 5.76028 15.5689 5.02567C 15.5921 4.33 15.4539 3.63839 15.1651 3.00481C 14.8763 2.37122 14.4447 1.81281 13.904 1.37314C 12.7941 0.457713 10.8494 1.88571e-06 8.06996 1.88571e-06L -1.00778e-05 1.88571e-06L -1.00778e-05 10.3878L 8.09748 10.3878C 10.831 10.3786 12.7597 9.89114 13.8834 8.92537Z" transform="translate(133.617 39.4162)" />
						</g>
						<g id="Vector_10__webcompany-logo">
							<path d="M 12.0809 8.45164C 12.5806 7.98071 12.9698 7.4054 13.2208 6.76685C 13.4717 6.1283 13.5782 5.4423 13.5325 4.75791C 13.5681 4.10311 13.4562 3.44865 13.205 2.84269C 12.9538 2.23673 12.5697 1.69468 12.0809 1.25642C 11.1131 0.418803 9.42527 1.67619e-06 7.01736 1.67619e-06L -1.00778e-05 1.67619e-06L -1.00778e-05 9.72865L 6.87975 9.72865C 9.35188 9.73781 11.0856 9.31214 12.0809 8.45164Z" transform="translate(133.617 19.8963)" />
						</g>
						<g id="Vector_11__webcompany-logo">
							<path d="M 43.6177 5.38111e-05C 33.4584 -0.0155736 23.5812 3.33369 15.5345 9.52274L 27.0719 9.52274C 32.0253 9.52274 35.8298 10.7471 38.4854 13.1959C 39.7657 14.3369 40.7838 15.7405 41.4701 17.3106C 42.1565 18.8807 42.4948 20.5802 42.4619 22.2929C 42.5225 25.1553 41.5091 27.9371 39.6205 30.0923C 38.1069 31.7 36.1973 32.8836 34.0823 33.5251C 37.7745 34.4131 40.492 35.935 42.2349 38.0908C 44.0324 40.4144 44.9574 43.2931 44.8492 46.2266C 44.8877 48.7413 44.246 51.2199 42.9916 53.4012C 41.7756 55.5019 40.0207 57.2413 37.9075 58.4406C 36.0221 59.3735 33.9776 59.9441 31.8808 60.1227C 29.523 60.4732 27.1486 60.7024 24.7671 60.8093L -5.03889e-06 60.8093C 3.17806 70.1 9.24455 78.136 17.3164 83.7475C 17.8209 83.1012 18.1862 82.3579 18.3896 81.5642L 12.3561 65.6908L 16.821 65.6908L 20.6186 76.9299L 24.32 65.6908L 28.668 65.6908L 23.0678 80.9257L 22.0634 83.672C 21.7879 84.4118 21.4351 85.1205 21.0108 85.7866L 20.8663 85.9857C 27.0026 89.4684 33.8584 91.498 40.905 91.9181C 47.9516 92.3382 55.0008 91.1376 61.5089 88.4087C 68.017 85.6799 73.8101 81.4958 78.4414 76.1791C 83.0727 70.8624 86.4185 64.5552 88.2207 57.7439C 90.0229 50.9327 90.2335 43.7993 88.836 36.8939C 87.4386 29.9886 84.4706 23.4959 80.1608 17.9164C 75.8511 12.3369 70.3148 7.81982 63.9789 4.71348C 57.6431 1.60713 50.6769 -0.00546632 43.6177 5.38111e-05Z" transform="translate(120.252 0)" />
						</g>
					</g>
				</g>
			</svg>
			</a></div>
	</div>
</div>
