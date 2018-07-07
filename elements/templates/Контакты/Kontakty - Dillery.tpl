name:Контакты - Диллеры
description:Contacts and Dealers
======
<!DOCTYPE html>
<html lang="ru">
	<head>
		{{head}}
		<!--maps-->
		<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
	</head>
	<body>
		<header class="header [+noshadow_class+]">
			{{header}}
		</header>

		<!-- --@ корзина по ховеру под корзиной в header @-- -->
		{{basket_under_header}} [[breadcrumbs_select_load]]

		<div class="second-page">
			<div class="uk-grid">

				<div class="primary-block uk-width-1-1">
					<div class="container">
						[+breadcrumbs_default+]

						[*content*]
					</div>
					<!--@-Здесь выводится карта-@-->
					{{contact-dealers-map}}

					<div class="container">					
						<div class="contact-page">
							<!--@-Здесь выводится контакная информация(телефоны и др.)-@-->
							{{contact_dealers_phones_address_info}}

							<!--@-Здесь выводятся контакты диллеров по группам-@-->
							{{contact_dealers_groups_contacts}}

							<!--@-Форма обратной связи для контактов и диллеров-@-->
							[[visible_chunk? 
							&id_param_val=`99`
							&chunk_name=`contact_dealers_feedback_form` 
							&tv_visible_name=`feedback_contacts_visible` 
							&session_param_name=`feedback_contacts_visible`
							]]

							<!--@-Здесь выводятся контакты сотрудников по группам-@-->
							[[visible_chunk? 
							&id_param_val=`99`
							&chunk_name=`contact_dealers_staff` 
							&tv_visible_name=`оur_team_contacts_visible` 
							&session_param_name=`оur_team_contacts_visible`
							]]

							<!--@-Чанк с выводом реквизитов-@-->
							[[visible_chunk? 
							&id_param_val=`99`
							&chunk_name=`contact_dealers_requisites` 
							&tv_visible_name=`requisites_contacts_visible` 
							&session_param_name=`requisites_contacts_visible`
							]]

						</div>
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
	</body>
</html>