name:modal_forms_block
description:блок с всплывающими элементами и формами
======
{{form_modal_answer}}
{{form_modal_review}}
{{form_modal_service}}
{{form_callback_popap}}
{{form_modal_product}}
{{modal_forms_common}}
{{form_found_cheaper_popap}}
{{form_new_service_projects_popap}}
{{form_feedback_question_popap}}
{{form_fast_buy}}
{{jobs_form_new}}
{{fast_buy_side_basket}}

[[if? &is=`[*id*]:!=:1` &then=`@TPL:modal_forms_settings`]]

<!--@-Вывод плавающей корзины. Значения генерируются сниппетом basket_visible_and_type-@-->
[+shk.side_basket+]

<!-- кнопка наверх -->
<div id="toup"></div>


