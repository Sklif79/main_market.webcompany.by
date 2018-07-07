name:mm_rules
description:Настройки параметров backenda в ManagerManager
======
// more example rules are in assets/plugins/managermanager/example_mm_rules.inc.php
// example of how PHP is allowed - check that a TV named documentTags exists before creating rule

if ($modx->db->getValue($modx->db->select('count(id)', $modx->getFullTableName('site_tmplvars'), "name='documentTags'"))) {
mm_widget_tags('documentTags', ' '); // Give blog tag editing capabilities to the 'documentTags (3)' TV
}
mm_widget_showimagetvs(); // Always give a preview of Image TVs


//Все страницы

mm_ddReadonly('rating');

mm_hideFields('content', '', '5,9,11,12,14,15,16,18,20,23,25,32,34,29,40,47,80,107,129,182,185,186'); // Скрываем блок контент там, где он не используется

mm_createTab('SEO', 'seo_inst', '', '', 'Набор инструментов для SEO оптимизации', '1000'); // Создаем таб SEO инструментов

mm_moveFieldsToTab('seoOverride,sitemap_changefreq,sitemap_exclude,sitemap_priority,rating,search_img_prev', 'seo_inst', '', ''); // Переместим элементы, относящиеся к настройке SEO

//Главная
mm_ddMultipleFields('logo', '', '5', 'image,image,textarea', 'Логотип верхний 189x50 px,Логотип нижний 204x64 px,Текст для логана. Перенос на новую строку осуществляется тегом &lt;br/&gt;', '400,400,400', '||', '::', 300, 100, 1, 1,'','{btnToggleRaw:true}'); //Вывод блока логотип
/*mm_ddMultipleFields([
'fields' => 'logo',
'roles' => '',
'templates' => '5',
'columns' => 'image,image,textarea',
'columnsTitles' => 'Логотип верхний 189x50 px,Логотип нижний 204x64 px,Текст для логана. Перенос на новую строку осуществляется тегом &lt;br/&gt;',
'columnsWidth' => '400,400,400',
'rowDelimiter' => '||',
'colDelimiter' => '::',
'previewWidth' => '300',
'previewHeight' => '100',
'minRowsNumber' => '1',
'maxRowsNumber' => '1',
'columnsData' => '1'
]);
*/

mm_createTab('Меню', 'menu_index_edit', '', '5', 'Администрирование верхнего, нижнего меню и меню под логотипом', '1000'); // Создаем таб в котором будет реализовано администрирование меню
mm_ddMultipleFields('top-menu', '', '5', 'text,text,select', 'Название пункта меню,Ссылка или id страницы в теге [~id~],Открывать в новой вкладке', '300', '||', '::', 300, 100, 0, 8,'[["_self","Нет"],["_blank","Да"]]','{btnToggleRaw:true}'); //Администрирование блока верхнего меню
mm_ddCreateSection('Верхнее меню','top-menu','menu_index_edit','','5');//Создаем секцию Верхнее меню
mm_ddMoveFieldsToSection('top-menu', 'top-menu','','5');//переместим поля в секцию Верхнее меню

mm_ddMultipleFields('header_menu', '', '5', 'text,text,select', 'Название пункта меню,Ссылка или id страницы в теге [~id~],Выводить подменю', '300', '||', '::', 300, 100, 0, 0,'[["0","Нет"],["1","Да"]]','{btnToggleRaw:true}'); //Администрирование блока верхнего меню
mm_ddCreateSection('Меню под логотипом','header_menu','menu_index_edit','','5');//Создаем секцию Меню под логотипом
mm_ddMoveFieldsToSection('header_menu', 'header_menu','','5');//переместим поля в секцию Меню под логотипом

mm_ddMultipleFields('footer_menu', '', '5', 'text,text,select', 'Название пункта меню,Ссылка или id страницы в теге [~id~],Открывать в новой вкладке', '300', '||', '::', 300, 100, 0, 0,'[["_self","Нет"],["_blank","Да"]]','{btnToggleRaw:true}'); //Администрирование блока верхнего меню
mm_ddCreateSection('Нижнее меню','footer_menu','menu_index_edit','','5');//Создаем секцию Верхнее меню
mm_ddMoveFieldsToSection('footer_menu', 'footer_menu','','5');//переместим поля в секцию Верхнее меню


mm_ddMultipleFields('slider-main', '', '5', 'text,textarea,text,image,image,select,select,select,select,text,text', 'Заголовок,Текст описания. Перенос на новую строку осуществляется тегом &lt;br/&gt;,Ссылка или id страницы в теге [~id~],Изображение для фона слайда 1920x400 px,Изображение для слайда размещающееся справа 500x400 px,Цвет текста на слайде,Отображать темную подложку,Отображать кнопку подробнее,Отображать кнопку заказать,текст подписи для кнопки заказать,Текст подписи для кнопки подробнее', '300,300,100,300,300,100,100,100,100,100,100', '||', '::', 300, 100, 0, 0,'[]||[]||[]||[]||[]||[["1","Белый"],["black","Черный"]]||[["0","Нет"],["1","Да"]]||[["0","Нет"],["1","Да"]]||[["0","Нет"],["1","Да"]]','{btnToggleRaw:true}'); //Вывод блока Как мы работаем на главной
mm_createTab('Слайдер', 'slider-main', '', '5', 'Изображения и тексты для слайдера на главной', '1000'); // Создаем таб Как мы работаем
mm_moveFieldsToTab('slider-main', 'slider-main', '', '5'); // Переместим элементы, относящиеся к табу Как мы работаем

mm_ddMultipleFields('dignity-main', '', '5', 'image,textarea', 'Изображение 47x39 px,Текст описания', '400,400', '||', '::', 300, 100, 0, 4,'','{btnToggleRaw:true}'); //Вывод инфографики "Наши преимущества" на главной
mm_createTab('Наши преимущества', 'dignity-main', '', '5', 'Иконки и тексты для инфографики Наши преимущества на главной', '1000'); // Создаем таб Наши преимущества
mm_moveFieldsToTab('dignity-main', 'dignity-main', '', '5'); // Переместим элементы, относящиеся к табу Наши преимущества

mm_ddMultipleFields('company-logo_index', '', '5', 'image,text', 'Изображение 158x98 px,Альтернативный текст', '400,400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод логотипов клиентов на главной
mm_createTab('Логотипы клиентов', 'company-logo_index', '', '5', 'Логотипы компаний заказчиков на главной', '1000'); // Создаем таб Логотипы клиентов
mm_moveFieldsToTab('company-logo_index', 'company-logo_index', '', '5'); // Переместим элементы, относящиеся к табу Логотипы клиентов

mm_ddMultipleFields('social_buttons', '', '5', 'image,image,image,image,text', 'Иконка соцсети в верхней части сайта 20x20 px,Иконка соцсети в нижней части сайта 32x32 px,Иконка соцсети при наведении в верхней части сайта 20x20 px,Иконка соцсети при наведении в нижней части сайта 32x32 px,Ссылка на страницу соцсети', '200', '||', '::', 300, 100, 0, 10,'','{btnToggleRaw:true}'); //Вывод логотипов клиентов на главной

mm_ddMultipleFields('certificate_index', '', '5', 'image,image,text', 'Изображение большое,Изображение для превью 111x155 или 230x155 px. Если не задано то берется большое изображение,Текст подписи под сертификатом', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Сертификаты
mm_createTab('Сертификаты на главной', 'certificate_index', '', '5', 'Логотипы компаний заказчиков на главной', '1000'); // Создаем таб Сертификаты на главной
mm_ddCreateSection('Сертификаты на главной','certificate_index','certificate_index','','5');//Создаем секцию Сертификаты на главной
mm_ddMoveFieldsToSection('certificate_index', 'certificate_index','','5');//переместим поля в секцию Сертификаты на главной

mm_createTab('Контакты', 'contacts_index', '', '5', 'Здесь задается контактная информация в верхней и нижней частях сайта, а также в блоке на карте', '1000'); // Контакты в верхней и нижней частях сайта

mm_ddMultipleFields('header_contacts_email_address', '', '5', 'text,text,text,text', 'Email,Подпись под Email,Адрес,Подпись под адресом', '300,300,300,300', '||', '::', 300, 100, 1, 1,'','{btnToggleRaw:true}'); //Вывод блока Email
mm_ddCreateSection('Адрес и Email в верхней части сайта','header_contacts_email_address','contacts_index','','5');//Создаем секцию Адрес и Email в верхней части сайта
mm_ddMoveFieldsToSection('header_contacts_email_address', 'header_contacts_email_address','','5');//переместим поля в секцию Адрес и Email в верхней части сайта

mm_ddMultipleFields('header_phones_hidden_block', '', '5', 'image,text,text', 'Иконка оператора 18x18 px,Телефон,Комментарий после телефона', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Сертификаты
mm_ddCreateSection('Телефоны в верхней части сайта','header_contacts_phones','contacts_index','','5');//Создаем секцию Телефоны в верхней части сайта
mm_ddMoveFieldsToSection('header_phones_first_phone,header_phones_hidden_block', 'header_contacts_phones','','5');//переместим поля в секцию Телефоны в верхней части сайта

mm_ddMultipleFields('header_mobile_contacts', '', '5', 'text,text', 'Email,Телефон', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Контакты в мобильной версии сайта
mm_ddCreateSection('Контакты в мобильной версии сайта в верхней части','header_mobile_contacts','contacts_index','','5');//Создаем секцию Контакты в мобильной версии сайта
mm_ddMoveFieldsToSection('header_mobile_contacts', 'header_mobile_contacts','','5');//переместим поля в секцию Контакты в мобильной версии сайта

mm_ddCreateSection('Контакты в нижней части сайта','footer_contacts','contacts_index','','5');//Создаем секцию Контакты в нижней части сайта
mm_ddMoveFieldsToSection('footer_contacts_phone,footer_company_details', 'footer_contacts','','5');//переместим поля в секцию Контакты в нижней части сайта

mm_ddMultipleFields('banner_left', '', '5', 'image,text,select', 'Изображение для баннера 273x370 px,Ссылка или id страницы в теге [~id~],Открывать в новой вкладке', '300', '||', '::', 300, 100, 0, 1,'[["_self","Нет"],["_blank","Да"]]','{btnToggleRaw:true}'); //Администрирование баннера в левом блоке
mm_ddCreateSection('Баннер в левой части сайта','banner_left','general','','5');//Создаем секцию Баннер в левой части сайта
mm_ddMoveFieldsToSection('banner_left', 'banner_left','','5');//переместим поля в секцию Баннер в левой части сайта

mm_ddMultipleFields('custom_pages_main', '', '5', 'image,text,text,select', 'Изображение превью страницы 300x250 px,Текст-название страницы на превью,Ссылка или id страницы в теге [~id~],Открывать в новой вкладке', '300', '||', '::', 300, 100, 0, 0,'[["_self","Нет"],["_blank","Да"]]','{btnToggleRaw:true}'); //Вывод блока редактирования Страницы пользователя
mm_createTab('Блок услуги', 'custom_pages_main', '', '5', 'Здесь задаются параметры для вывода первью страниц, задаваемых пользователем, на главной', '1000'); // Создаем таб Страницы пользователя
mm_ddCreateSection('Страницы пользователя','custom_pages_main','custom_pages_main','','5');//Создаем секцию Страницы пользователя на главной
mm_ddMoveFieldsToSection('add_custom_pages_main,custom_pages_main_header,custom_pages_main_title,custom_pages_main', 'custom_pages_main','','5');//переместим поля в секцию Сертификаты на главной

mm_ddMultipleFields('custom_pages_proj_main', '', '5', 'image,text,text,select,richtext', 'Изображение превью страницы 390x192 px,Текст-название страницы на превью,Ссылка или id страницы в теге [~id~],Открывать в новой вкладке,Текст краткого описания при наведении', '300', '||', '::', 300, 100, 0, 0,'[["_self","Нет"],["_blank","Да"]]','{btnToggleRaw:true}'); //Вывод блока редактирования Страницы пользователя
mm_createTab('Блок проекты', 'custom_pages_proj_main', '', '5', 'Здесь задаются параметры для вывода первью страниц, задаваемых пользователем, на главной', '1000'); // Создаем таб Страницы пользователя
mm_ddCreateSection('Страницы пользователя','custom_pages_proj_main','custom_pages_proj_main','','5');//Создаем секцию Страницы пользователя на главной
mm_ddMoveFieldsToSection('add_custom_pages_proj_main,custom_pages_proj_main_header,custom_pages_proj_main_all_link,custom_pages_proj_main_title,custom_pages_proj_main', 'custom_pages_proj_main','','5');//переместим поля в секцию Сертификаты на главной

//Вопрос-Ответ
mm_ddMultipleFields('question_answer', '', '7,38,64,147,136,139,158,159,160,162,168,169,170,171,172,173', 'text,richtext', 'Вопрос,Ответ', '400,400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Вопрос-Ответ
mm_createTab('Вопрос-Ответ', 'question_answer', '', '7,38,147,162', 'Тексты вопросов и ответов на них', '1000'); // Создаем таб Вопрос-Ответ
mm_ddCreateSection('Вопрос-Ответ','question_answer','question_answer','','147,162');//Создаем секцию Вопрос-Ответ
mm_ddMoveFieldsToSection('question_answer', 'question_answer','','147,162');//переместим поля в секцию Вопрос-Ответ
mm_ddCreateSection('Текст под блоком вопрос-ответ','questions_product_after_text','question_answer','','147,162');//Создаем секцию Вопрос-Ответ
mm_ddMoveFieldsToSection('questions_product_after_text', 'questions_product_after_text','','147,162');//переместим поля в секцию Вопрос-Ответ


//Сертификаты
mm_ddMultipleFields('certificate', '', '8', 'image,image,image,text', 'Изображение большое,Изображение для превью 211x297 или 462x297 px. Если не задано то берется большое изображение,Изображение для превью на главной 111x155 или 230x155 px. Если не задано то берется большое изображение,Текст подписи под сертификатом', '300,300,300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Сертификаты
mm_ddCreateSection('Сертификаты','certificate','general','','8');//Создаем секцию Сертификаты
mm_ddMoveFieldsToSection('certificate', 'certificate','','8');//переместим поля в секцию Сертификат

//История компании
mm_ddMultipleFields('company_history', '', '9', 'text,text,text,textarea', 'Дата,Название единицы времени,Заголовок текста описания,Текст описания события', '300,300,300,300', '||', '::', 300, 100, 0, 0); //Вывод блока Сертификаты
mm_ddCreateSection('История компании','company_history','general','','9');//Создаем секцию История компании
mm_ddMoveFieldsToSection('company_history', 'company_history','','9');//переместим поля в секцию История компании

//Контакты, Диллеры и Контакты
mm_ddMultipleFields('contact_info', '', '10,69,121,122,123,124,131', 'select,text,text', 'Иконка,Заголовок,Значение', '400,400,400', '||', '~~', 300, 100, 0, 0, '[["address","Адрес"],["phone","Телефон"],["mail","Почта"]]','{btnToggleRaw:true}'); //Контактная информация страница Контакты
mm_createTab('Контактная информация', 'contact_info', '', '10,69,121,122,123,124,131', 'Иконки и значения контактных данных', '1000'); // Создаем таб Контактная информация страница Контакты
mm_moveFieldsToTab('contact_info', 'contact_info', '', '10,69,121,122,123,124,131'); // Переместим элементы, относящиеся к табу Контактная информация страница Контакты

mm_ddMultipleFields('map_contacts', '', '10,69,121,122,123,124,131', 'text,text,text', 'Координаты широта долгота через запятую, Текст при наведении на точку, Текст при клике', '300,300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //вывод карты на главной

mm_ddCreateSection('Информация для карты','map_contacts','general','','10,69,121,122,123,124,131');//Создаем секцию Информация для карты
mm_ddMoveFieldsToSection('map_contacts', 'map_contacts','','10,69,121,122,123,124,131');//переместим поля в секцию Информация для карты

mm_ddCreateSection('Реквизиты','contact_dealers_requisites','contact_info','','69,121,122,123,124,131');//Создаем секцию Реквизиты
mm_ddMoveFieldsToSection('contact_dealers_requisites', 'contact_dealers_requisites','','69,121,122,123,124,131');//переместим поля в секцию Реквизиты

mm_ddMultipleFields('dialers_contacts_info', '', '79', 'image,text,text,text,textarea,text', 'Изображение превью 178x120 px,Название,Контакты,Телефоны. Несколько телефонов раздеряются тегом br,Время работы. Несколько значений разделяется знаком ;,Город', '300,300,300,300,300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //диллеры


mm_ddMultipleFields('contact_dealers_phones', '', '69,121,122,123,124,131', 'text,text', 'Телефон с форматированием, Телефон без форматирования', '300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //вывод телефонов

mm_ddCreateSection('Телефоны','contact_dealers_phones','contact_info','','69,121,122,123,124,131');//Создаем секцию Телефоны
mm_ddMoveFieldsToSection('contact_dealers_phones', 'contact_dealers_phones','','69,121,122,123,124,131');//переместим поля в секцию Телефоны

mm_ddMultipleFields('contact_dealers_adress', '', '69,121,122,123,124', 'text,text', 'Описание контакта,Адрес', '400,400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //вывод адресов
mm_ddCreateSection('Адреса','contact_dealers_adress','contact_info','','69,121,122,123,124');//Создаем секцию Адреса
mm_ddMoveFieldsToSection('contact_dealers_adress', 'contact_dealers_adress','','69,121,122,123,124');//переместим поля в секцию Адреса

mm_ddMultipleFields('contact_dealers_email', '', '69,121,122,123,124,131', 'text,text', 'Описание,Email', '400,400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //вывод Email
mm_ddCreateSection('Email','contact_dealers_email','contact_info','','69,121,122,123,124,131');//Создаем секцию Email
mm_ddMoveFieldsToSection('contact_dealers_email', 'contact_dealers_email','','69,121,122,123,124,131');//переместим поля в секцию Email

mm_ddCreateSection('Карта на главной','map_index','general','','5');//Создаем секцию Карта на главной
mm_ddMoveFieldsToSection('map_index_point,map_index_title,map_index_adress,map_index_email', 'map_index','','5');//переместим поля в секцию Карта на главной

//Вакансии
mm_ddMultipleFields('vacancy', '', '11', 'text,text,textarea', 'Должность, Уровень заработной платы, Описание вакансии', '300,300,400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вакансии

//Прайс-Лист
mm_ddMultipleFields('measure_unit', '', '14', 'text,text', 'Сокращение единицы измерения для вывода в таблицу,Название единицы измерения для вывода в список единиц измерений', '300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Услуга подробнее

$snippet_name_u = 'ddGetMultipleField';
$arrparams_u = array( 'inputString_docField' => 'measure_unit','inputString_docId' => '14','outputFormat'=> 'JSON');
$measure_unit_json_val = $modx->runSnippet($snippet_name_u,$arrparams_u);
mm_ddMultipleFields('price_row', '', '15', 'text,select,text', 'Наименование, Единица измерения, Стоимость', '300,300,300', '||', '::', 300, 100, 0, 0, '[]||'.$measure_unit_json_val.'||[]','{btnToggleRaw:true}'); //вывод карты на главной

//Партнеры страница подробнее
mm_ddMultipleFields('company_partners', '', '17', 'image,text,text,text,text', 'Логотип компании 126x126 px, Контактное лицо, Ссылка на сайт компании, Подпись для ссылки, Телефон', '300,300,300,300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Наши партнеры

//Выполненный проект подробнее
mm_ddMultipleFields('gallery_project', '', '22', 'image,image,text', 'Изображение большое,Изображение для превью 211x211. Если не задано то берется большое изображение,Текст подписи под фотографией', '400,400,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Галерея изображений проекта
mm_ddCreateSection('Галерея изображений проекта','gallery_project','general','','22');//Создаем секцию Галерея изображений проекта
mm_ddMoveFieldsToSection('gallery_project', 'gallery_project','','22');//переместим поля в секцию Галерея изображений проекта

//Сотрудники
mm_ddMultipleFields('employees', '', '26', 'image,text,text,text,text', 'Фотография сотрудника,Должность,Фамилия и имя,Телефон,Email', '300,300,300,300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Наши cотрудники


//Услуга подробнее
mm_ddMultipleFields('service_gallery', '', '28', 'image,image', 'Изображение для слайда большое 420x265 px,Изображение для превью малое 110x69 px. Если не задано то используется большое изображение', '400,400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Услуга подробнее
mm_createTab('Галерея изображений', 'service_gallery', '', '28', 'Изображения для отображения в галерее на страницах услуги подробнее', '1000'); // Создаем таб Наши преимущества
mm_moveFieldsToTab('service_gallery', 'service_gallery', '', '28'); // Переместим элементы, относящиеся к табу Наши преимущества

mm_ddMultipleFields('services_detailed_description_prew', '', '28,136,139,159,160,162,168,169,170,171,172,173', 'text,text', 'Название параметра,Значение параметра', '400,400', '||', '::', 300, 100, 0, 0,'',"{btnToggleRaw:true}"); //подробное описание в превью услуги
mm_ddCreateSection('Детальное описание в превью услуги или проекта','services_detailed_description_prew','general','','28,162');//Создаем секцию Детальное описание в превью услуги или проекта
mm_ddMoveFieldsToSection('services_detailed_description_prew', 'services_detailed_description_prew','','28,162');//переместим поля в секцию Детальное описание в превью услуги или проекта

//Документы контент
mm_ddMultipleFields('documents_files', '', '32', 'file,text', 'Файл, Текст ссылки на файл', '400,400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод файлов на странице Документы
mm_ddCreateSection('Документы','documents_files','general','','32');//Создаем секцию Галерея изображений проекта
mm_ddMoveFieldsToSection('documents_files', 'documents_files','','32');//переместим поля в секцию Галерея изображений проекта

//Фотогалерея

mm_ddMultipleFields('photo_gallery', '', '33', 'image,image,text', 'Изображение большое,Изображение для превью 211x211. Если не задано то берется большое изображение,Текст подписи под фотографией', '400,400,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Галерея изображений
mm_ddCreateSection('Фотогалерея','photo_gallery','general','','33');//Создаем секцию Галерея изображений
mm_ddMoveFieldsToSection('photo_gallery', 'photo_gallery','','33');//переместим поля в секцию Галерея изображений

//Видеогалерея
mm_ddMultipleFields('video_gallery', '', '34', 'text', 'Цифро-буквенный код в конце ссылки на видео в youtube', '400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Видеогалерея
mm_ddCreateSection('Видеогалерея','video_gallery','general','','34');//Создаем секцию Видеогалерея
mm_ddMoveFieldsToSection('video_gallery', 'video_gallery','','34');//переместим поля в секцию Видеогалерея

//Отзывы
mm_ddMultipleFields('reviews', '', '39', 'text,date,textarea,textarea', 'Имя оставившего отзыв,Дата добавления отзыва,Текст отзыва,Текст ответа администратора сайта', '300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Отзывы
mm_ddCreateSection('Отзывы','reviews','general','','39');//Создаем секцию Отзывы
mm_ddMoveFieldsToSection('reviews', 'reviews','','39');//переместим поля в секцию Отзывы

//Товар подробное описание
mm_renameField('content', 'Описание товара', '', '38,64,158,162', 'Введите текст');//Текст для блока каталог на главной

mm_ddMultipleFields('prod_ins_slider_gallery', '', '38,64,136,139,158,159,160,162,168,169,170,171,172,173', 'image,image', 'Изображение большое 395x395 px,Изображение для превью 60x60. Если не задано то берется большое изображение', '400,400,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Галерея изображений продукта
mm_createTab('Галерея изображений продукта', 'prod_ins_slider_gallery', '', '38,162,171,172,173', 'Изображения для отображения в галереях на страницах подробного описания товаров', '1000'); // Создаем таб Галерея изображений продукта
mm_moveFieldsToTab('prod_ins_slider_gallery', 'prod_ins_slider_gallery', '', '38,162'); // Переместим элементы, относящиеся к табу Галерея изображений продукта
mm_ddCreateSection('Галерея изображений продукта','prod_ins_slider_gallery','prod_ins_slider_gallery','','38,162');//Создаем секцию Галерея изображений продукта
mm_ddMoveFieldsToSection('prod_ins_slider_gallery', 'prod_ins_slider_gallery','','38,162');//переместим поля в секцию Галерея изображений продукта

mm_ddMultipleFields('specifications_prod', '', '38,64,136,139,158,159,160,162,168,169,170,171,172,173', 'text,text,textarea', 'Название характеристик,Значение характеристики,Описание характеристики', '400,400,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Галерея изображений продукта
mm_createTab('Технические характеристики продукта', 'specifications_prod', '', '38,162', 'Технические характеристики продукта на страницах подробного описания товаров', '1000'); // Создаем таб Технические характеристики продукта
mm_moveFieldsToTab('specifications_prod', 'specifications_prod', '', '38,162'); // Переместим элементы, относящиеся к табу Технические характеристики продукта

mm_ddMultipleFields('documents_product_files', '', '38,64,136,139,156,158,159,160,162,168,169,170,171,172,173', 'file,text', 'Файл, Текст ссылки на файл', '400,400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод файлов на странице подробное описание товара
mm_ddCreateSection('Документы','documents_product_files','general','','38,156,162');//Создаем секцию Документы на странице подробное описание товара
mm_ddMoveFieldsToSection('documents_product_files', 'documents_product_files','','38,156,162');//переместим поля в секцию Документы на странице подробное описание товара

mm_ddMultipleFields('reviews_product', '', '38,162', 'text,date,textarea,textarea', 'Имя оставившего отзыв,Дата добавления отзыва,Текст отзыва,Текст ответа администратора сайта', '300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Отзывы
mm_createTab('Отзывы', 'reviews_product', '', '38,162', 'Технические характеристики продукта на страницах подробного описания товаров', '1000'); // Создаем таб Отзывы
mm_moveFieldsToTab('reviews_product', 'reviews_product', '', '38,162'); // Переместим элементы, относящиеся к табу Отзывы

mm_ddCreateSection('Параметры товара','product_params','general','','38,162');//Создаем секцию Параметры товара на странице подробное описание товара
mm_ddMoveFieldsToSection('bestseller,novelty,sale,sale_persent,product_availability,articul,brand_name,old_price,new_price,product_availability,display_on_index,special_offer_on_index,card_services_select,similar_product_select,product_brand_select,rating', 'product_params','','38,162');//переместим поля в секцию Параметры товара на странице подробное описание товара

mm_ddCreateSection('Параметры товара','prod_params','general','','64,158');//Создаем секцию Правый блок
mm_ddMoveFieldsToSection('product_availability,new_price,old_price,sale_persent,articul,product_brand_select,action_active_to', 'prod_params','','64,158');//переместим поля в секцию Правый блок

mm_ddCreateSection('Маркеры','prod_lbl','general','','64,158');//Создаем секцию Правый блок
mm_ddMoveFieldsToSection('bestseller,novelty,sale', 'prod_lbl','','64,158');//переместим поля в секцию Правый блок

mm_ddCreateSection('Описание товара','prod_cont','general','','64,158');//Создаем секцию Правый блок
mm_ddMoveFieldsToSection('content', 'prod_cont','','64,158');//переместим поля в секцию Правый блок

mm_ddCreateSection('Технические характеристики продукта','specif_sect_prod','general','','64,158');//Создаем секцию Технические характеристики продукта
mm_ddMoveFieldsToSection('specifications_prod_header,specifications_prod_hidden,specifications_prod', 'specif_sect_prod','','64,158');//переместим поля в секцию Технические характеристики продукта

mm_ddCreateSection('Документы','docs_product_files','general','','64,158');//Создаем секцию Документы на странице подробное описание товара
mm_ddMoveFieldsToSection('documents_product_files', 'docs_product_files','','64,158');//переместим поля в секцию Документы на странице подробное описание товара

mm_ddCreateSection('Дополнительные блоки','dop_prod_block','general','','64,158');//Создаем секцию Дополнительные блоки
mm_ddMoveFieldsToSection('similar_product_select,tv_block_insert,product_new_dignity', 'dop_prod_block','','64,158');//переместим поля в секцию Дополнительные блоки

mm_ddCreateSection('Изображение','img_prod_block','general','','64,158');//Создаем секцию Изображение
mm_ddMoveFieldsToSection('product_prev,prod_ins_slider_gallery', 'img_prod_block','','64,158');//переместим поля в секцию Изображение

mm_ddCreateSection('Дополнительные параметры','dop_params_prod_block','general','','64,158');//Создаем секцию Изображение
mm_ddMoveFieldsToSection('display_on_index,special_offer_on_index', 'dop_params_prod_block','','64,158');//переместим поля в секцию Изображение

mm_ddCreateSection('Текстовый блок в нижней части страницы описания товара','bottom_text_prod_block','general','','64,158');//Создаем секцию Изображение
mm_ddMoveFieldsToSection('product_bottom_seo_text_block', 'bottom_text_prod_block','','64,158');//переместим поля в секцию Изображение

mm_createTab('Наличие в магазинах', 'card_available_in_stores', '', '64,158', 'Здесь задается отображание меток наличия товаров в магазинах', '1000'); // Создаем таб Наличие в магазинах
mm_ddCreateSection('Наличие в магазинах','card_available_in_stores','card_available_in_stores','','64,158');//Создаем секцию Наличие в магазинах
mm_ddMoveFieldsToSection('card_available_in_stores', 'card_available_in_stores','','64,158');//переместим поля в секцию Наличие в магазинах

mm_createTab('Сертификаты', 'certificate_card', '', '64,158', 'Логотипы компаний заказчиков на главной', '1000'); // Создаем таб Сертификаты
mm_ddCreateSection('Сертификаты','certificate_card','certificate_card','','64,158');//Создаем секцию Сертификаты
mm_ddMoveFieldsToSection('certificate', 'certificate_card','','64,158');//переместим поля в секцию Сертификат

mm_createTab('Видео', 'product_new_video_block', '', '64,158', 'Галерея изображений продукта большая по центру', '1000'); // Создаем таб Видео
mm_ddCreateSection('Видео','product_new_video_block','product_new_video_block','','64,158');//Создаем секцию Видео на странице подробное описание товара
mm_ddMoveFieldsToSection('product_new_video_block', 'product_new_video_block','','64,158');//переместим поля в секцию Видео на странице подробное описание товара

mm_createTab('Галерея большая', 'card_gallery', '', '64,158', 'Галерея изображений продукта большая по центру', '1000'); // Создаем таб Галерея большая
mm_ddCreateSection('Галерея изображений большая','card_gallery','card_gallery','','64,158');//Создаем секцию Галерея большая
mm_ddMoveFieldsToSection('card_gallery', 'card_gallery','','64,158');//переместим поля в секцию Галерея большая

mm_createTab('Вопрос-Ответ', 'question_answer', '', '64,158', 'Тексты вопросов и ответов на них', '1000'); // Создаем таб Вопрос-Ответ
mm_ddCreateSection('Вопрос-Ответ','question_answer','question_answer','','64,158');//Создаем секцию Вопрос-Ответ
mm_ddMoveFieldsToSection('question_answer', 'question_answer','','64,158');//переместим поля в секцию Вопрос-Ответ
mm_ddCreateSection('Текст под блоком вопрос-ответ','questions_product_after_text','question_answer','','64,158');//Создаем секцию Вопрос-Ответ
mm_ddMoveFieldsToSection('questions_product_after_text', 'questions_product_after_text','','64,158');//переместим поля в секцию Вопрос-Ответ


mm_createTab('Услуги', 'services_select', '', '64,158', 'Тексты вопросов и ответов на них', '1000'); // Создаем таб Услуги
mm_ddCreateSection('Список услуг выводимых в карточке товара','services_select','services_select','','64,158');//Создаем секцию Список услуг выводимых в карточке товара
mm_ddMoveFieldsToSection('card_services_select', 'services_select','','64,158');//переместим поля в секцию Список услуг выводимых в карточке товара


mm_ddMultipleFields('product_new_video_block', '', '64,136,139,153,158,159,160,162,168,169,170,171,172,173', 'text', 'Ссылка на видео в youtube', '400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод файлов на странице подробное описание товара
mm_ddCreateSection('Видео','product_new_video_block','general','','153,162');//Создаем секцию Видео на странице подробное описание товара
mm_ddMoveFieldsToSection('product_new_video_block', 'product_new_video_block','','153,162');//переместим поля в секцию Видео на странице подробное описание товара

mm_ddMultipleFields('product_new_dignity', '', '64,136,139,158,159,160,162,168,169,170,171,172,173', 'image,text,text', 'Иконка преимущества 45x45 px,Текст преимущества,Ссылка или id страницы в теге [~id~]', '400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Преимущества товара
mm_ddCreateSection('Преимущества товара','product_new_dignity','general','','162,168');//Создаем секцию Преимущества товара на странице подробное описание товара
mm_ddMoveFieldsToSection('product_new_dignity', 'product_new_dignity','','162');//переместим поля в секцию Преимущества товара на странице подробное описание товара

mm_ddMultipleFields('card_gallery', '', '64,136,139,158,159,160,162,167,168,169,170,171,172,173', 'image,image,text', 'Изображение большое,Изображение для превью 88x88. Если не задано то берется большое изображение,Текст подписи под фотографией', '400,400,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Галерея изображений большая
mm_createTab('Галерея большая', 'card_gallery', '', '162', 'Галерея изображений продукта большая по центру', '1000'); // Создаем таб Галерея большая
mm_ddCreateSection('Галерея изображений большая','card_gallery','card_gallery','','162');//Создаем секцию Галерея большая
mm_ddMoveFieldsToSection('card_gallery', 'card_gallery','','162');//переместим поля в секцию Галерея большая

mm_ddMultipleFields('certificate', '', '64,136,139,158,159,160,162,168,169,170,171,172,173', 'image,image,image,text', 'Изображение большое,Изображение для превью 211x297 или 462x297 px. Если не задано то берется большое изображение,Изображение для превью на главной 111x155 или 230x155 px. Если не задано то берется большое изображение,Текст подписи под сертификатом', '300,300,300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Вывод блока Сертификаты
mm_createTab('Сертификаты', 'certificate_card', '', '162', 'Логотипы компаний заказчиков на главной', '1000'); // Создаем таб Сертификаты
mm_ddCreateSection('Сертификаты','certificate_card','certificate_card','','162');//Создаем секцию Сертификаты
mm_ddMoveFieldsToSection('certificate', 'certificate_card','','162');//переместим поля в секцию Сертификат


$snippet_name = 'ddGetMultipleField';
$arrparams = array( 'inputString_docField' => 'stores_adress_for_card','inputString_docId' => '53','outputFormat'=> 'JSON');
$stores_json_val = $modx->runSnippet($snippet_name,$arrparams);

mm_ddMultipleFields('card_available_in_stores', '', '64,158,162', 'select,select', 'Магазин,Наличие', '300,300,300', '||', '::', 300, 100, 0, 0,$stores_json_val.'||[["in-stock","В наличии"],["not-available","Нет в наличии"],["reservation","Под заказ"]]','{btnToggleRaw:true}');


//Конфигурация сайта
mm_widget_colors('primary-color,primary-btn,substrate-background', '', '', '47');

mm_ddCreateSection('Настройки поиска','site_search_mode','general','','47');//Создаем секцию Настройки поиска
mm_ddMoveFieldsToSection('search_catalog_only,search_catalog_id', 'site_search_mode','','47');//переместим поля в секцию Настройки поиска

mm_ddCreateSection('Настройки корзины','site_basket_mode','general','','47');//Создаем секцию Настройки корзины
mm_ddMoveFieldsToSection('basket_type,no_busket_btn', 'site_basket_mode','','47');//переместим поля в секцию Настройки корзины

mm_ddCreateSection('Настройки фильтра','filter_type','general','','47');//Создаем секцию Настройки фильтра
mm_ddMoveFieldsToSection('filter_type', 'filter_type','','47');//переместим поля в секцию Настройки фильтра

mm_ddCreateSection('Настройки скролл-меню','header_scroll_config','general','','47');//Создаем секцию Настройки скролл-меню
mm_ddMoveFieldsToSection('visible_header_scroll,site_header_scroll_config', 'header_scroll_config','','47');//переместим поля в секцию Настройки скролл-меню

mm_ddCreateSection('Тестовый режим','site_test_mode','general','','47');//Создаем секцию Тестовый режим
mm_ddMoveFieldsToSection('site_test_mode', 'site_test_mode','','47');//переместим поля в секцию Тестовый режим

mm_ddCreateSection('Кеширование','cache_site_config','general','','47');//Создаем секцию Кеширование
mm_ddMoveFieldsToSection('no_less_cache', 'cache_site_config','','47');//переместим поля в секцию Кеширование

mm_ddCreateSection('Изменение цветовой схемы','color_scheme','general','','47');//Создаем секцию изменение цветовой схемы
mm_ddMoveFieldsToSection('primary-color,primary-btn,substrate-background', 'color_scheme','','47');//переместим поля в секцию Создаем секцию изменение цветовой схемы

mm_createTab('Главная', 'index_configuration', '', '47', 'Здесь задаются настройки главной страницы', '1000'); // Создаем таб для настроек главной страницы
mm_moveFieldsToTab('slider_main_visible,dignity_main_visible,services_main_visible,catalog_main_visible,our_novelty_visible,callback_main_visible,about_index_visible,news_index_visible,sale_index_visible,certificates_index_visible,company_logo_index_visible,reviews_index_visible,map_main_visible,catalog_main_background', 'index_configuration', '', '47'); // Переместим элементы, относящиеся к табу настроек главной страницы
mm_createTab('О компании', 'about_configuration', '', '47', 'Здесь задаются настройки страницы \"О компании\"', '1000'); // Создаем таб для настроек страницы О компании
mm_moveFieldsToTab('company_history_about_visible,workers_about_visible,сertificates_about_visible', 'about_configuration', '', '47'); // Переместим элементы, относящиеся к табу настроек страницы О компании
mm_createTab('Контакты', 'contacts_configuration', '', '47', 'Здесь задаются настройки страницы \"Контакты\"', '1000'); // Создаем таб для настроек страницы Контакты
mm_moveFieldsToTab('contacts_template_config,requisites_contacts_visible,feedback_contacts_visible,оur_team_contacts_visible', 'contacts_configuration', '', '47'); // Переместим элементы, относящиеся к табу настроек страницы Контакты

mm_createTab('Товар подробнее', 'product_inside_configuration', '', '47', 'Здесь задаются настройки страницы с подробным описанием товара', '1000'); // Создаем таб для настроек страницы Товар подробнее
mm_moveFieldsToTab('availability_product_visible,print_product_visible,found_cheaper_product_visible,advantages_product_visible,promotional_block_product_visible,availability_in_shops_product_visible,characteristics_product_visible,documentation_product_visible,content_product_visible,personal_manager_product_visible,video_product_visible,gallery_product_visible,certificates_product_visible,similar_item_product_visible,leave_request_product_visible,questions_product_visible,our_command_product_visible,completed_projects_product_visible,services_product_visible,reviews_product_visible,bottom_text_product_visible,articles_product_visible,capture_form_product_visible,price_sheet_product_visible', 'product_inside_configuration', '', '47'); // Переместим элементы, относящиеся к табу настроек страницы Товар подробнее


//Задание значений опций для конфигурации сайта
mm_ddMultipleFields('header_options_value', '', '185', 'image,text,text', 'Изображение для опции,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для верхней части сайта
mm_ddCreateSection('Верхняя часть сайта','header_options_value','general','','185');//Создаем секцию Верхняя часть сайта
mm_ddMoveFieldsToSection('header_options_value', 'header_options_value','','185');//переместим поля в секцию Верхняя часть сайта

mm_ddMultipleFields('header_scroll_options_value', '', '185', 'image,text,text', 'Изображение для опции,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для верхней части сайта
mm_ddCreateSection('Скролл-меню','header_scroll_options_value','general','','185');//Создаем секцию Скролл-меню
mm_ddMoveFieldsToSection('header_scroll_options_value', 'header_scroll_options_value','','185');//переместим поля в секцию Скролл-меню

mm_ddMultipleFields('footer_options_value', '', '185', 'image,text,text', 'Изображение для опции,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для нижней части сайта
mm_ddCreateSection('Нижняя часть сайта','footer_options_value','general','','185');//Создаем секцию Нижняя часть сайта
mm_ddMoveFieldsToSection('footer_options_value', 'footer_options_value','','185');//переместим поля в секцию Нижняя часть сайта

mm_ddMultipleFields('breadcrumbs_options_value', '', '185', 'image,text,text', 'Изображение для опции,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для навигационных цепочек
mm_ddCreateSection('Навигационные цепочки и заголовок','breadcrumbs_options_value','general','','185'); //Задание опций для навигационных цепочек
mm_ddMoveFieldsToSection('breadcrumbs_options_value', 'breadcrumbs_options_value','','185'); //Задание опций для навигационных цепочек

mm_ddMultipleFields('search_catalog_only_options_value', '', '185', 'text,text,text', 'Текст для кнопки,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для поиска
mm_ddCreateSection('Поиск','search_catalog_only_options_value','general','','185'); //Задание опций для поиска
mm_ddMoveFieldsToSection('search_catalog_only_options_value', 'search_catalog_only_options_value','','185'); //Задание опций для поиска

mm_ddMultipleFields('basket_type_options_value', '', '185', 'text,text,text', 'Текст для кнопки,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для поиска
mm_ddCreateSection('Корзина','basket_type_options_value','general','','185'); //Задание опций для корзины
mm_ddMoveFieldsToSection('basket_type_options_value', 'basket_type_options_value','','185'); //Задание опций для корзины

mm_ddMultipleFields('primary_color_options_value', '', '185', 'image,text,text', 'Изображение для цвета,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для основного цвета
mm_ddCreateSection('Основной цвет','primary_color_options_value','general','','185'); //Задание опций для основного цвета
mm_ddMoveFieldsToSection('primary_color_options_value', 'primary_color_options_value','','185'); //Задание опций для основного цвета

mm_ddMultipleFields('primary_btn_options_value', '', '185', 'image,text,text', 'Изображение для цвета,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для цвета кнопок
mm_ddCreateSection('Цвет кнопок','primary_btn_options_value','general','','185'); //Задание опций для цвета кнопок
mm_ddMoveFieldsToSection('primary_btn_options_value', 'primary_btn_options_value','','185'); //Задание опций для цвета кнопок

mm_ddMultipleFields('substrate_background_options_value', '', '185', 'image,text,text', 'Изображение для цвета,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для цвета блока Нужна консультация
mm_ddCreateSection('Цвет подложки с блока Нужна консультация','substrate_background_options_value','general','','185'); //Задание опций для цвета блока Нужна консультация
mm_ddMoveFieldsToSection('substrate_background_options_value', 'substrate_background_options_value','','185'); //Задание опций для цвета блока Нужна консультация

mm_ddMultipleFields('filter_type_options_value', '', '185', 'text,text,text', 'Текст для кнопки,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для фильтра
mm_ddCreateSection('Фильтр','filter_type_options_value','general','','185'); //Задание опций для фильтра
mm_ddMoveFieldsToSection('filter_type_options_value', 'filter_type_options_value','','185'); //Задание опций для фильтра

mm_ddMultipleFields('contacts_template_options_value', '', '185', 'image,text,text', 'Изображение для опции,Название опции,Значение опции', '300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Задание опций для навигационных цепочек
mm_ddCreateSection('Страница \"Контакты\"','contacts_template_options_value','general','','185'); //Задание опций для навигационных цепочек
mm_ddMoveFieldsToSection('contacts_template_options_value', 'contacts_template_options_value','','185'); //Задание опций для навигационных цепочек


//Каталоги
mm_createTab('Для превью на главной', 'catalog_index_prev', '', '37,35,74,36', 'Изображения для отображения в галерее на страницах услуги подробнее', '1000'); // Создаем таб Для превью на главной
mm_moveFieldsToTab('catalog_in_index,catalog_index_prew_text,no_submenu_catalog_index_prew', 'catalog_index_prev', '', '37,35,74,36'); // Переместим элементы, относящиеся к табу Для превью на главной

//Персонал
mm_ddMultipleFields('staff_contacts_info', '', '81', 'image,text,text,text,text', 'Фотография сотрудника 320х400 px,Фамилия и имя,Должность,Email,Телефон', '300,300,300,300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Наши cотрудники

//Отзыв подробнее
mm_ddMultipleFields('social_links_review', '', '105', 'image,text', 'Иконка соцсети 23x23 px,Ссылка на страницу в соцсети', '300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Соцссылки для отзыва

//Каталог общий
mm_ddMultipleFields('card_personal_manager', '', '5,35', 'image,text,text,text,text', 'Фотография менеджера 140x140 px,Заголовок блока,Фамилия и имя менеджера,Телефон,Email', '300,300', '||', '::', 300, 100, 0, 1,'','{btnToggleRaw:true}'); //Информация для блока персональный менеджер
mm_ddCreateSection('Персональный менеджер','card_personal_manager','general','','5,35');//Создаем секцию Персональный менеджер
mm_ddMoveFieldsToSection('card_personal_manager', 'card_personal_manager','','5,35');//переместим поля в секцию Персональный менеджер

mm_ddMultipleFields('stores_adress_for_card', '', '35', 'text', 'Магазин', '400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Магазины для выбора в карточке товара
mm_ddCreateSection('Адреса магазинов','stores_adress_for_card','general','','35');//Создаем секцию Адреса магазинов
mm_ddMoveFieldsToSection('stores_adress_for_card', 'stores_adress_for_card','','35');//переместим поля в секцию Адреса магазинов

//Проект подробнее версия 2.0
mm_ddMultipleFields('projects_card_slider', '', '136,160,165,171,172,173', 'image,image,image,text', 'Изображение для слайда большое,Изображение для превью слайда большое 498x305 px. Если не задано то используется большое изображение,Изображение навигационное малое 91x91 px. Если не задано то используется большое изображение,Альтернативный текст', '300,300,300,300', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Услуга подробнее
mm_createTab('Галерея проекта', 'projects_card_slider', '', '136,160,171,172,173', 'Изображения для отображения в галерее на страницах Проект подробнее', '1000'); // Создаем таб Наши преимущества
mm_moveFieldsToTab('projects_card_slider', 'projects_card_slider', '', '136,160,171,172,173'); // Переместим элементы, относящиеся к табу Галерея изображений

mm_ddCreateSection('Кнопка заказать','projects_right_block_button','projects_right_block','','136,160,171,172,173');//Создаем секцию Персональный менеджер
mm_ddMoveFieldsToSection('projects_right_block_button_visible,projects_right_block_button_name', 'projects_right_block_button','','136,160,171,172,173');//переместим поля в секцию Персональный менеджер


//Услуга подробнее версия 2.0
mm_ddCreateSection('Превью Блок','service_inside_more_v20_prev_block','general','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Превью блок
mm_ddMoveFieldsToSection('serv_action_text,services_img_prev_new,services_detailed_description_prew', 'service_inside_more_v20_prev_block','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Превью блок

mm_ddCreateSection('Содержимое ресурса','service_inside_more_v20_content','general','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Содержимое ресурса
mm_ddMoveFieldsToSection('content', 'service_inside_more_v20_content','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Содержимое ресурса

mm_ddCreateSection('Преимущества товара','product_new_dignity','general','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Преимущества товара на странице подробное описание товара
mm_ddMoveFieldsToSection('product_new_dignity', 'product_new_dignity','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Преимущества товара на странице подробное описание товара

mm_ddCreateSection('Вставка вызовов различных блоков','service_inside_more_v20_other_blocks','general','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Вставка вызовов различных блоков
mm_ddMoveFieldsToSection('tv_block_insert', 'service_inside_more_v20_other_blocks','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Вставка вызовов различных блоков

mm_ddCreateSection('Текстовый блок в нижней части страницы','service_inside_more_v20_product_bottom_seo_text_block','general','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Вставка вызовов различных блоков
mm_ddMoveFieldsToSection('product_bottom_seo_text_block', 'service_inside_more_v20_product_bottom_seo_text_block','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Вставка вызовов различных блоков

mm_createTab('Характеристики', 'service_inside_more_v20_specifications_prod', '', '139,159,168,169,170,136,171,172,173,160', 'Технические характеристики продукта на страницах подробного описания услуг', '1000'); // Создаем таб Технические характеристики продукта
mm_ddCreateSection('Технические характеристики продукта','service_inside_more_v20_specifications_prod','service_inside_more_v20_specifications_prod','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Технические характеристики продукта
mm_ddMoveFieldsToSection('specifications_prod_header,specifications_prod_hidden,specifications_prod', 'service_inside_more_v20_specifications_prod','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Технические характеристики продукта

mm_createTab('Правый блок', 'service_inside_more_v20_right', '', '139,159,168,169,170', 'Редактирование информации в правом блоке', '1000'); // Создаем таб Технические характеристики продукта
mm_ddCreateSection('Правый блок','service_inside_more_v20_right','service_inside_more_v20_right','','139,159,168,169,170');//Создаем секцию Правый блок
mm_ddMoveFieldsToSection('service_inner_v20_right_block_visible,projects_right_block_button_visible,projects_right_block_button_name,service_inside_more_v20_right_text', 'service_inside_more_v20_right','','139,159,168,169,170');//переместим поля в секцию Правый блок

mm_createTab('Правый блок', 'projects_right_block', '', '136,160,171,172,173', 'Управление блоком и контент блока справа от слайдера', '1000'); // Создаем таб Правый блок
mm_moveFieldsToTab('projects_right_block_visible', 'projects_right_block', '', '136,160,171,172,173'); // Переместим элементы, относящиеся к табу Правый блок


mm_ddMultipleFields('projects_right_first_text_block', '', '136,160,171,172,173', 'text,richtext', 'Заголовок,Основной текст', '400', '||', '::', 300, 100, 0, 1,'','{btnToggleRaw:true}'); //Верхний текстовый блок
mm_ddCreateSection('Первый текстовый блок','projects_right_first_text_block','projects_right_block','','136,160,171,172,173');//Создаем секцию Персональный менеджер
mm_ddMoveFieldsToSection('projects_right_first_text_block', 'projects_right_first_text_block','','136,160,171,172,173');//переместим поля в секцию Персональный менеджер

mm_ddMultipleFields('projects_right_block_params', '', '136,160,171,172,173', 'text,richtext', 'Заголовок,Основной текст', '400', '||', '::', 300, 100, 0, 0,'','{btnToggleRaw:true}'); //Верхний текстовый блок
mm_ddCreateSection('Параметры проекта в правом блоке','projects_right_block_params','projects_right_block','','136,160,171,172,173');//Создаем секцию Параметры проекта в правом блоке
mm_ddMoveFieldsToSection('projects_right_block_params', 'projects_right_block_params','','136,160,171,172,173');//переместим поля в секцию Параметры проекта в правом блоке
mm_createTab('Документы', 'service_inside_more_v20_documents_product_files', '', '139,159,168,169,170,136,171,172,173,160', 'Редактирование вывода документов', '1000'); // Создаем таб Документы

mm_ddCreateSection('Ссылка на характеристики','projects_all_chars_ancor_link','projects_right_block','','136,160,171,172,173');//Создаем секцию Ссылка на характеристики
mm_ddMoveFieldsToSection('projects_all_chars_ancor_link', 'projects_all_chars_ancor_link','','136,160,171,172,173');//переместим поля в секцию Ссылка на характеристики

mm_ddCreateSection('Документы','documents_product_files','service_inside_more_v20_documents_product_files','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Документы на странице подробное описание товара
mm_ddMoveFieldsToSection('documents_product_files', 'documents_product_files','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Документы на странице подробное описание товара

mm_createTab('Видео', 'service_inside_more_v20_product_new_video_block', '', '139,159,168,169,170,136,171,172,173,160', 'Редактирование вывода видео', '1000'); // Создаем таб Видео
mm_ddCreateSection('Видео','product_new_video_block','service_inside_more_v20_product_new_video_block','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Видео на странице подробное описание товара
mm_ddMoveFieldsToSection('product_new_video_block', 'product_new_video_block','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Видео на странице подробное описание товара

mm_createTab('Сертификаты', 'certificate_card', '', '139,159,168,169,170,136,171,172,173,160', 'Логотипы компаний заказчиков на главной', '1000'); // Создаем таб Сертификаты
mm_ddCreateSection('Сертификаты','certificate_card','certificate_card','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Сертификаты
mm_ddMoveFieldsToSection('certificate', 'certificate_card','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Сертификат

mm_createTab('Вопрос-Ответ', 'question_answer', '', '139,159,168,169,170,136,171,172,173,160', 'Тексты вопросов и ответов на них', '1000'); // Создаем таб Вопрос-Ответ
mm_ddCreateSection('Вопрос-Ответ','question_answer','question_answer','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Вопрос-Ответ
mm_ddMoveFieldsToSection('question_answer', 'question_answer','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Вопрос-Ответ
mm_ddCreateSection('Текст под блоком вопрос-ответ','questions_product_after_text','question_answer','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Вопрос-Ответ
mm_ddMoveFieldsToSection('questions_product_after_text', 'questions_product_after_text','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Вопрос-Ответ

mm_createTab('Галерея', 'card_gallery', '', '139,159,168,169,170,136,171,172,173,160', 'Галерея изображений продукта большая по центру', '1000'); // Создаем таб Галерея большая
mm_ddCreateSection('Галерея изображений большая','card_gallery','card_gallery','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Галерея большая
mm_ddMoveFieldsToSection('card_gallery', 'card_gallery','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Галерея большая

mm_createTab('Товары', 'service_inside_more_v20_similar_product_select', '', '139,159,168,169,170,136,171,172,173,160', 'Редактирование вывода сопутствующих товаров', '1000'); // Создаем таб Видео
mm_ddCreateSection('C этим товаром покупают','service_inside_more_v20_similar_product_select','service_inside_more_v20_similar_product_select','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Видео на странице подробное описание товара
mm_ddMoveFieldsToSection('similar_product_select', 'service_inside_more_v20_similar_product_select','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Видео на странице подробное описание товара

mm_createTab('Календарь', 'service_inside_more_v20_card_calendar', '', '139,159,168,169,170,136,171,172,173,160', 'Редактирование вывода видео', '1000'); // Создаем таб Календарь
mm_ddCreateSection('Код вставки календаря от гугла','service_inside_more_v20_card_calendar','service_inside_more_v20_card_calendar','','139,159,168,169,170,136,171,172,173,160');//Создаем секцию Календарь на странице подробное описание товара
mm_ddMoveFieldsToSection('card_calendar', 'service_inside_more_v20_card_calendar','','139,159,168,169,170,136,171,172,173,160');//переместим поля в секцию Календарь на странице подробное описание товара

mm_ddCreateSection('Блок Специальные предложения на главной','sale_index','general','','28,139,168,169,170,159');//Создаем секцию Детальное описание в превью услуги или проекта
mm_ddMoveFieldsToSection('special_offer_on_index,serv_action_text,sale_index_prew_text', 'sale_index','','28,139,168,169,170,159');//переместим поля в секцию Детальное описание в превью услуги или проекта


//Карточка товара
mm_renameField('introtext', 'Краткое описание товара', '', '64,158', 'Введите текст');//меняем название элемента
mm_hideFields('rating', '', '64,158');