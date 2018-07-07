name:card_personal_manager_tpl
description:Шаблон вывода блока персональный менеджер
======
<div class="personal-manager">
	<div class="personal-manager__img">
		<img src="[[phpthumb? &input=`[+col0+]` &options=`w=145,h=145,f=png,q=85,far=C,bg=ffffff`]]" alt="">
	</div>
	<div class="personal-manager__info-wrap">
		<div class="personal-manager__info">
			<div class="personal-manager__info-title">[+col1+]</div>
			<div class="personal-manager__name">[+col2+]</div>
		</div>
		<div class="personal-manager__phone">
			<svg width="14" height="14" viewBox="0 0 14 14" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <g id="Canvas__phone-call-button" transform="translate(-11836 837)">
        <g id="phone-call-button__phone-call-button">
            <g id="Group__phone-call-button">
                <g id="call__phone-call-button">
                    <g id="Vector__phone-call-button">
                        <mask id="mask0_outline_out__phone-call-button">
                            <rect id="mask0_outline_inv__phone-call-button" fill="white" x="-1" y="-1" width="14" height="14" transform="translate(11837 -836)" />
                            <use xlink:href="#path0__phone-call-button" fill="black" transform="translate(11837 -836)" />
                        </mask>
                        <g mask="url(#mask0_outline_out__phone-call-button)">
                            <use xlink:href="#path1_stroke_2x__phone-call-button" transform="translate(11837 -836)" />
                        </g>
                    </g>
                </g>
            </g>
        </g>
    </g>
    <defs>
        <path id="path0__phone-call-button" d="M 2.4 5.2C 3.33333 7.06667 4.93333 8.6 6.8 9.6L 8.26667 8.13333C 8.46664 7.93336 8.73333 7.86669 8.93333 8C 9.66667 8.26667 10.4666 8.4 11.3333 8.4C 11.7333 8.4 12 8.66667 12 9.06667L 12 11.3333C 12 11.7333 11.7333 12 11.3333 12C 5.06667 12 0 6.93333 0 0.666667C 0 0.266667 0.266667 0 0.666667 0L 3 0C 3.4 0 3.66667 0.266667 3.66667 0.666667C 3.66667 1.46667 3.8 2.26667 4.06667 3.06667C 4.13333 3.26667 4.06667 3.53333 3.93333 3.73333L 2.4 5.2Z" />
        <path id="path1_stroke_2x__phone-call-button" d="M 2.4 5.2L 1.70878 4.47736L 1.17563 4.98733L 1.50557 5.64721L 2.4 5.2ZM 6.8 9.6L 6.32778 10.4815L 6.98217 10.832L 7.50711 10.3071L 6.8 9.6ZM 8.26667 8.13333L 8.97377 8.84044L 8.26667 8.13333ZM 8.93333 8L 8.37871 8.8321L 8.47868 8.89874L 8.59159 8.93979L 8.93333 8ZM 4.06667 3.06667L 5.01535 2.75044L 4.06667 3.06667ZM 3.93333 3.73333L 4.62456 4.45598L 4.70423 4.37977L 4.76538 4.28803L 3.93333 3.73333ZM 1.50557 5.64721C 2.54329 7.72265 4.30387 9.39724 6.32778 10.4815L 7.27222 8.71852C 5.5628 7.80276 4.12338 6.41069 3.29443 4.75279L 1.50557 5.64721ZM 7.50711 10.3071L 8.97377 8.84044L 7.55956 7.42623L 6.09289 8.89289L 7.50711 10.3071ZM 8.97377 8.84044C 8.9608 8.85342 8.9112 8.8977 8.80951 8.91949C 8.69616 8.94378 8.53063 8.93336 8.37871 8.8321L 9.48796 7.1679C 8.74154 6.67039 7.95053 7.03526 7.55956 7.42623L 8.97377 8.84044ZM 8.59159 8.93979C 9.4459 9.25045 10.3629 9.4 11.3333 9.4L 11.3333 7.4C 10.5704 7.4 9.88743 7.28288 9.27508 7.06021L 8.59159 8.93979ZM 11.3333 9.4C 11.3061 9.4 11.2057 9.38655 11.1096 9.29044C 11.0134 9.19433 11 9.09391 11 9.06667L 13 9.06667C 13 8.63942 12.8532 8.20567 12.5238 7.87623C 12.1943 7.54678 11.7606 7.4 11.3333 7.4L 11.3333 9.4ZM 11 9.06667L 11 11.3333L 13 11.3333L 13 9.06667L 11 9.06667ZM 11 11.3333C 11 11.3061 11.0134 11.2057 11.1096 11.1096C 11.2057 11.0134 11.3061 11 11.3333 11L 11.3333 13C 11.7606 13 12.1943 12.8532 12.5238 12.5238C 12.8532 12.1943 13 11.7606 13 11.3333L 11 11.3333ZM 11.3333 11C 5.61895 11 1 6.38105 1 0.666667L -1 0.666667C -1 7.48562 4.51438 13 11.3333 13L 11.3333 11ZM 1 0.666667C 1 0.693914 0.986553 0.794328 0.89044 0.89044C 0.794328 0.986553 0.693914 1 0.666667 1L 0.666667 -1C 0.239419 -1 -0.194328 -0.853219 -0.523773 -0.523773C -0.853219 -0.194328 -1 0.239419 -1 0.666667L 1 0.666667ZM 0.666667 1L 3 1L 3 -1L 0.666667 -1L 0.666667 1ZM 3 1C 2.97275 1 2.87234 0.986553 2.77623 0.89044C 2.68011 0.794328 2.66667 0.693914 2.66667 0.666667L 4.66667 0.666667C 4.66667 0.239419 4.51989 -0.194328 4.19044 -0.523773C 3.86099 -0.853219 3.42725 -1 3 -1L 3 1ZM 2.66667 0.666667C 2.66667 1.57985 2.81918 2.48648 3.11798 3.38289L 5.01535 2.75044C 4.78082 2.04686 4.66667 1.35349 4.66667 0.666667L 2.66667 0.666667ZM 3.11798 3.38289C 3.09799 3.32291 3.09342 3.27482 3.09288 3.2456C 3.09234 3.2162 3.09566 3.19767 3.0972 3.19047C 3.09948 3.17984 3.10041 3.17994 3.10128 3.17863L 4.76538 4.28803C 5.00065 3.93513 5.21324 3.34412 5.01535 2.75044L 3.11798 3.38289ZM 3.24211 3.01069L 1.70878 4.47736L 3.09122 5.92264L 4.62456 4.45598L 3.24211 3.01069Z" />
    </defs>
</svg>
			[+col3+]
		</div>
		<div class="personal-manager__mail">
			<svg width="14" height="12" viewBox="0 0 14 12" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <g id="Canvas__mail-ico-manager" transform="translate(-11788 836)">
        <g id="Group__mail-ico-manager">
            <g id="closed-envelope__mail-ico-manager">
                <g id="Group__mail-ico-manager2">
                    <g id="Group__mail-ico-manager3">
                        <g id="Vector2__mail-ico-manager">
                            <use xlink:href="#path0__mail-ico-manager" transform="translate(11790 -833.28)" />
                        </g>
                        <g id="Rectangle__mail-ico-manager">
                            <mask id="mask0_outline_ins__mail-ico-manager">
                                <use xlink:href="#path1__mail-ico-manager" fill="white" transform="translate(11788 -836)" />
                            </mask>
                            <g mask="url(#mask0_outline_ins__mail-ico-manager)">
                                <use xlink:href="#path2_stroke_2x__mail-ico-manager" transform="translate(11788 -836)" />
                            </g>
                        </g>
                    </g>
                </g>
            </g>
        </g>
    </g>
    <defs>
        <path id="path0__mail-ico-manager" d="M 0.225787 1.03634L 4.78326 4.3471C 4.8596 4.40258 4.94593 4.43029 5.03229 4.43029C 5.11866 4.43029 5.20498 4.40258 5.28132 4.3471L 9.8388 1.03634C 10.062 0.874195 10.1315 0.529358 9.99398 0.266197C 9.85646 0.00303611 9.56391 -0.0789078 9.34078 0.0832785L 5.03229 3.21309L 0.723843 0.0832785C 0.500717 -0.0787735 0.20824 0.00299133 0.0706424 0.266197C -0.0669175 0.529313 0.0025462 0.874195 0.225787 1.03634Z" />
        <path id="path1__mail-ico-manager" d="M 0 2C 0 0.895431 0.895431 0 2 0L 12 0C 13.1046 0 14 0.895431 14 2L 14 10C 14 11.1046 13.1046 12 12 12L 2 12C 0.895431 12 0 11.1046 0 10L 0 2Z" />
        <path id="path2_stroke_2x__mail-ico-manager" d="M 2 1L 12 1L 12 -1L 2 -1L 2 1ZM 13 2L 13 10L 15 10L 15 2L 13 2ZM 12 11L 2 11L 2 13L 12 13L 12 11ZM 1 10L 1 2L -1 2L -1 10L 1 10ZM 2 11C 1.44772 11 1 10.5523 1 10L -1 10C -1 11.6569 0.343146 13 2 13L 2 11ZM 13 10C 13 10.5523 12.5523 11 12 11L 12 13C 13.6569 13 15 11.6569 15 10L 13 10ZM 12 1C 12.5523 1 13 1.44772 13 2L 15 2C 15 0.343146 13.6569 -1 12 -1L 12 1ZM 2 -1C 0.343146 -1 -1 0.343146 -1 2L 1 2C 1 1.44772 1.44772 1 2 1L 2 -1Z" />
    </defs>
</svg>
			<a href="mailto:[+col4+]">[+col4+]</span></a>
		</div>
	</div>
</div>