name:company_history_tpl
description:Шаблон вывода элементов блок История компании
======
<div class="comment-block-page">
	<div class="uk-grid uk-grid-collapse" data-uk-grid-match="{target:'.element-left'}">
		<div class="uk-width-1-6 uk-hidden-small">
			<div class="element-left">
				<div class="date">
					<p>[+col0+]</p>
					<span>[+col1+]</span>
				</div>
			</div>
		</div>
		<div class="uk-width-1-1 uk-width-medium-5-6">
			<div class="element-right">
				<div class="element-flex">
					<div class="date uk-visible-small" >
						<p>[+col0+]</p>
						<span>[+col1+]</span>
					</div>
					<div class="title">[+col2+]</div>
				</div>
				<div class="content">
					[+col3+]
				</div>
			</div>
		</div>
	</div>
</div>