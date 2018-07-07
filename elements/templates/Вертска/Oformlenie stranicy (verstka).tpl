name:Оформление страницы (верстка)
description:
======
<!DOCTYPE html>
<html lang="ru">

<head>
    {{head}}
</head>

<body>
<header class="header [+noshadow_class+]">
    {{header}}
</header>
	
<!-- --@ корзина по ховеру под корзиной в header @-- -->
{{basket_under_header}} [[breadcrumbs_select_load]]
	
<div class="container second-page">
    <div class="uk-grid">
        {{left_bar_catalog}}
        <div class="primary-block uk-width-1-1 uk-width-medium-3-4">
            [+breadcrumbs_default+]
            




		
			<!--@- Стили для текста -@-->
			<div class="style-txt">
				<h4>Заголовки</h4>
				
				<h1>Header 1</h1>
				<div class="column-txt">
					<p>Lorem Ipsum is simply dummy text of the printing and 
						typesetting industry.Lorem Ipsum has been the industry's 
						standard dummy text ever since the 1500s, when an unknown 
						printer took a galley of type and scrambled it to make a type 
						specimen book. It has survived not only five centuries, but also 
						the leap into electronic typesetting.</p>
					<p>Lorem Ipsum is simply dummy text of the printing and 
						typesetting industry.Lorem Ipsum has been the industry's 
						standard dummy text ever since the 1500s, when an unknown 
						printer took a galley of type and scrambled it to make a type 
						specimen book. It has survived not only five centuries, but also 
						the leap into electronic typesetting.</p>
				</div>
				
				<h2>Header 2</h2>
				<div>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text 
					ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not 
					only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with 
					the release of Letraset sheets containing </p>
				</div>
				
				<h3>Header 3</h3>
				<div class="column-txt">
					<p>Lorem Ipsum is simply dummy text of the printing and 
						typesetting industry.Lorem Ipsum has been the industry's 
						standard dummy text ever since the 1500s, when an unknown 
						printer took a galley of type and scrambled it to make a type 
						specimen book. It has survived not only five centuries, but also 
						the leap into electronic typesetting.</p>
					<p>Lorem Ipsum is simply dummy text of the printing and 
						typesetting industry.Lorem Ipsum has been the industry's 
						standard dummy text ever since the 1500s, when an unknown 
						printer took a galley of type and scrambled it to make a type 
						specimen book. It has survived not only five centuries, but also 
						the leap into electronic typesetting.</p>
				</div>
				
				<h4>Header 4</h4>
				<div>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text 
					ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not 
					only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with 
					the release of Letraset sheets containing </p>
				</div>
				
				<h5>Header 5</h5>
				<div class="column-txt">
					<p>Lorem Ipsum is simply dummy text of the printing and 
						typesetting industry.Lorem Ipsum has been the industry's 
						standard dummy text ever since the 1500s, when an unknown 
						printer took a galley of type and scrambled it to make a type 
						specimen book. It has survived not only five centuries, but also 
						the leap into electronic typesetting.</p>
					<p>Lorem Ipsum is simply dummy text of the printing and 
						typesetting industry.Lorem Ipsum has been the industry's 
						standard dummy text ever since the 1500s, when an unknown 
						printer took a galley of type and scrambled it to make a type 
						specimen book. It has survived not only five centuries, but also 
						the leap into electronic typesetting.</p>
				</div>
				
				<h6>Header 6</h6>
				<div>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text 
					ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not 
					only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with 
					the release of Letraset sheets containing </p>
				</div>
				
				<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text 
					ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not 
					only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with 
					the release of Letraset sheets containing </p>
				
				
				<h4>Список с точками:</h4>
				<ul>
					<li>Номер 1</li>
					<li>Номер 2</li>
					<li>Номер 3</li>
					<li>Номер 4</li> 
				</ul>
				<p>
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id,
					quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
					necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. 
				</p>
				
				<h4>Нумерованный список:</h4>
				<ol>
					<li>Номер 1</li>
					<li>Номер 2</li>
					<li>Номер 3</li>
					<li>Номер 4</li> 
				</ol>
				<p>
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id,
					quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
					necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae. 
				</p>
				
				<div class="column-half">
					<div>
						<h4>Список с точками:</h4>
						<ul>
							<li>Номер 1</li>
							<li>Номер 2</li>
							<li>Номер 3
								<ul>
									<li>Номер 3.1</li>
									<li>Номер 3.2</li>
									<li>Номер 3.3
										<ul>
											<li>Номер 3.3.1</li>
											<li>>Номер 3.3.2</li>
										</ul>
									</li>
									<li>Номер 3.4</li>
									<li>Номер 3.5</li>
								</ul>
							</li>
							<li>Номер 4</li> 
							<li>Номер 5</li>
							<li>Номер 6</li>
							<li>Номер 7</li>
							<li>Номер 8</li> 
						</ul>
					</div>
					
					<div>
						<h4>Нумерованный список:</h4>
						<ol>
							<li>Номер 1</li>
							<li>Номер 2</li>
							<li>Номер 3</li>
							<li>Номер 4
								<ol>
									<li>Номер 4.1</li>
									<li>Номер 4.2</li>
									<li>Номер 4.3
										<ol>
											<li>Номер 4.3.1</li>
											<li>Номер 4.3.2</li>
											<li>Номер 4.3.3</li>
										</ol>
									</li>
									<li>Номер 4.4</li>
									<li>Номер 4.5</li>
								</ol>
							</li> 
							<li>Номер 5</li>
							<li>Номер 6</li>
							<li>Номер 7</li>
							<li>Номер 8</li> 
						</ol>
					</div>
				</div>
				
				<h4>Цитата</h4>
				<div class="column-half">
					<div class="italic-blockquote">
						<blockquote>
							<p>
								Lorem Ipsum is simply dummy text of the printing and 
								typesetting industry. Lorem Ipsum has been the 
								industry's standard dummy text ever since the 1500s, 
								when an unknown printer took a galley of type and 
								scrambled it to make a type specimen book. It has 
								survived not only five centuries, but also the leap 
								into electronic typesetting.

								— Andreus Volf, Paranoic, 1998
							</p>
						</blockquote>
					</div>
					
					<div class="italic-blockquote">
						<blockquote>
							<p>
								Lorem Ipsum is simply dummy text of the printing and 
								typesetting industry. Lorem Ipsum has been the 
								industry's standard dummy text ever since the 1500s, 
								when an unknown printer took a galley of type and 
								scrambled it to make a type specimen book. It has 
								survived not only five centuries, but also the leap 
								into electronic typesetting.

								— Andreus Volf, Paranoic, 1998
							</p>
						</blockquote>
					</div>
				</div>
				
				<blockquote>
					<p>Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
						quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est.
					</p>
				</blockquote>
				
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia. Mauris
					finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<h4>Выравнивание по левому краю</h4>
				<p>
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
					quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
					debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
				</p>
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<h4>Выравнивание по центру</h4>
				<p style="text-align: center;">
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
					quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
					debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
				</p>
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<h4>Выравнивание по правому краю</h4>
				<p style="text-align: right;">
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
					quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
					debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
				</p>
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<h4>Выравнивание по ширине</h4>
				<p style="text-align: justify;">
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
					quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
					debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
				</p>
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<h4>Текст курсив</h4>
				<p>
					<em>
						Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
						quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
						debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
					</em>
				</p>
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<h4>Текст подчеркнутый</h4>
				<p>
					<span style="text-decoration: underline;">
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
					quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
					debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
					</span>
				</p>
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<h4>Текст зачеркнутый</h4>
				<p>
					<span style="text-decoration: line-through;">
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
					quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
					debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
					</span>
				</p>
				
				<h4>Гиперссылка на главную</h4>
				<p>
					<a href="/">Et harum quidem rerum facilis</a> est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit,
					quo minus id, quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis
					debitis aut rerum necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
				</p>
				
				<h4>Стилизованная таблица с рамкой на всю ширину</h4>
				
				<table style="width: 100%;" border="1">
					<tbody>
					<tr>
						<th>Amet animi asperiores</th>
						<th>Amet animi asperiores</th>
						<th>Amet animi asperiores</th>
						<th>Amet animi asperiores</th>
						<th>Amet animi asperiores</th>
					</tr>
					<tr>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
					</tr>
					<tr>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores&nbsp;Amet animi asperioresAmet animi asperioresAmet animi asperiores</td>
					</tr>
					</tbody>
				</table>
				
				<p>
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id,
					quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
					necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
				</p>
				
				<h4>Стилизованная таблица без рамки на всю ширину</h4>
				
				<table style="width: 100%;">
					<tbody>
					<tr>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
					</tr>
					<tr>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
					</tr>
					<tr>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores</td>
						<td>Amet animi asperiores&nbsp;Amet animi asperioresAmet animi asperioresAmet animi asperiores</td>
					</tr>
					</tbody>
				</table>
				
				<p>
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id,
					quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
					necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
				</p>
				
				<h4>Горизонтальная линия</h4>
				<hr>
				<p>
					Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio, cumque nihil impedit, quo minus id,
					quod maxime placeat, facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum
					necessitatibus saepe eveniet, ut et voluptates repudiandae sint et molestiae non recusandae
				</p>
				
				<h4>Буквицы</h4>
				<p class="cap-fill">
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
					when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap
					into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing. Lorem Ipsum has
					been the industry's standard dummy text ever since the 1500s, when an un dummy text ever since the 1500s, when an unknown printer took a galley of type and
					scrambled it to make a type specimen book.  It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially
					unchanged. It was popularised in the 1960s with the release of Letraset sheets containing  
				</p>
				
				<p class="cap">
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
					when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into
					electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
				</p>
				
				<hr>
				
				<div class="column-half">
					<p class="cap-fill">
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s
						, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap
						into electronic typesetting, remaining essentially unchanged. 
					</p>
					
					<p class="cap">
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
						when an unknown printer took a galley of type and scrambled. 
					</p>
				</div>
				
				<h4>Цитата</h4>
				<div class="column-half">
					<p>
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
						when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap
						into electronic typesetting, remaining essentially unchanged. 
					</p>
					<p>
						Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
						when an unknown printer took a galley of type and scrambled. 
					</p>
				</div>
				
				<p>
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
					when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into
					electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
				</p>
				
				<h4>Код</h4>
				For example,  <span><section></span>  should be wrapped as inline. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
				<code>
					<p>Sample text here...</p>
				</code>
				<p>
					Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an
					unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic
					typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing 
				</p>
				
				<h4>Код</h4>
				<div class="column-half">
					<p>
						For example,  <span><section></span>  should be wrapped as inline. 
					</p>
					<pre>
						<p>Sample text here...</p>
					</pre>
				</div>
				
				<h4>Иконки</h4>
				
				<p><i class="icons uk-icon-exclamation-circle"></i> Lorem Ipsum is simply dummy text of the printing and.</p>
				<p><i class="icons uk-icon-certificate"></i> Typesetting industry. Lorem Ipsum has been the industry's.</p>
				<p><i class="icons uk-icon-database"></i> Standard dummy text ever since the 1500s, when an unknown.</p>
				<p><i class="icons uk-icon-file-text"></i> Printer took a galley of type and scrambled it to make a type.</p>
				<a href="#">...more icons</a>
				
				
				<h4>Оформление текстовых блоков</h4>
				<div class="leave-request">
					<div class="leave-request__content">
						<img src="assets/templates/market/img/update/customer-service.svg" alt="">
						<div class="leave-request__info">
							<div class="leave-request__title">
								Остались вопросы?
							</div>
							<div class="leave-request__txt">
								Оставьте заявку и мы ответим на все вопросы
							</div>
						</div>
					</div>
					
					<a href="" class="leave-request__link">Оставить заявку</a>
				</div>
				
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<div class="leave-request">
					<div class="leave-request__content">
						<div class="leave-request__info">
							<div class="leave-request__title">
								Остались вопросы?
							</div>
							<div class="leave-request__txt">
								Оставьте заявку и мы ответим на все вопросы
							</div>
						</div>
					</div>
					
					<a href="" class="leave-request__link">Оставить заявку</a>
				</div>
				
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<div class="leave-request">
					<div class="leave-request__content">
						<div class="leave-request__info">
							<div class="leave-request__title">
								Остались вопросы?
							</div>
							<div class="leave-request__txt">
								Оставьте заявку и мы ответим на все вопросы
							</div>
						</div>
					</div>
				</div>
				
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<div class="card-question">
					<div class="card-question_slogan">
						Наши специалисты ответят на любой
						интересующий вопрос по данному товару
					</div>
					<a href="#callback" data-uk-modal="" class="card-question__btn">задать вопрос</a>
				</div>
				
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
				
				<div class="progect-page-action">
					<div class="progect-page-action__label">
						Акция
					</div>
					
					<strong>Домен в подарок!</strong>
					
					<div class="progect-page-action__date">с 01 апреля по 30 августа</div>
					
					<p>При заказе услуг по разработке интернет-магазина мы предоставляем домен в зоне .ru на 1 год!</p>
				</div>
				
				<p>
					Suspendisse consequat in risus vel consequat. Donec aliquet, lectus ac faucibus placerat, nibh dui porta neque, maximus ullamcorper nisl est lacinia turpis.
					Vivamus varius sapien nibh, eu pretium arcu bibendum sit amet. Fusce eget arcu at diam dignissim malesuada. Aliquam sodales maximus eros sed lacinia.
					Mauris finibus felis in ligula malesuada, id tincidunt mi dictum.
				</p>
			</div>

			
				
        </div>
    </div>
</div>



<footer class="footer [+footer_add_class+]">
    {{footer}}
</footer>
<div class="modal">
    {{modal_forms_block}}
</div>
<script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
<script src="//yastatic.net/share2/share.js"></script>

<!-- скрипт таймера -->
<script>
    // http://lexxus.github.io/jq-timeTo/
	
	var endAction = $('span.active_to').text();
	
    $('#countdown').timeTo({
        timeTo: new Date(new Date(endAction)),
        //displayDays: 3,
        captionSize: 11,
        fontFamily: '',
        fontSize: 14,
        lang: 'ru',
        displayCaptions: true,

    });

</script>
</body>

</html>
