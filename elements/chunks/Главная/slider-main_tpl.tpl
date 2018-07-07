name:slider-main_tpl
description:Слайдер на главной шаблон вывода
======
<li style="background-image: url('[+col3+]');">
	<div class="full-slide container">
		<div class="content [[if? &is=`[+col6+]:=:1` &then=`active`]]">
			<p class="title [+col5+]">[+col0+]</p>

			<span class="[+col5+]">[+col1+]</span>

			<div>
				[[if? &is=`[+col7+]:=:1` &then=`<a href="[+col2+]" class="more-button">[+col10+]</a>`]]
				[[if? &is=`[+col8+]:=:1` &then=`<a href="#callback" data-uk-modal class="buy-button">[+col9+]</a>`]]
			</div>
		</div>
			<div class="img">
				[[if? &is=`[+col4+]:isempty` &then=`` &else=`
					<img src="[[phpthumb? &input=`[+col4+]` &options=`w=500,h=400,f=png,q=95,far=C,bg=ffffff`]]" alt=""/>
				`]]
			</div>
	</div>
</li>