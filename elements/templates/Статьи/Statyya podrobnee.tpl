name:Статья подробнее
description:Articles more
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
				{{left_bar}}
				<div class="primary-block uk-width-1-1 uk-width-medium-3-4">
					[+breadcrumbs_default+]
					
					
					[*content*]

                    <!--@- Форма 1 -@-->
					{{leave_request? &icon_url=`assets/templates/market/img/update/customer-service.svg` &title_r=`Остались вопросы?` &content_r=`Оставьте заявку и мы ответим на все вопросы` &button_name=`Оставить заявку`}}	
                  						
					<!--@- Советуем почитать -@-->
					{{card_articles? &block_name=`Советуем почитать` &parent_id=`20`}}					

					


					<div class="catalog-back">
						<!--@- Кнопка вернуться в каталог -@-->
						{{back_parent_link? &link_tutle=`К общему списку`}}

						<!--@- Кнопки поделиться в соцсетях -@-->
						{{share_btn_block}}
					</div>

				</div>
			</div>
		</div>

		<!--@-Просмотренные товары-@-->	
		[!our_view_id!]	

		<footer class="footer [+footer_add_class+]">
			{{footer}}
		</footer>
		<div class="modal">
			{{modal_forms_block}}
		</div>
		{{postfooter_js}}
	</body>

</html>
