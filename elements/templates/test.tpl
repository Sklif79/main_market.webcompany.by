name:test
description:
======
<!--@-[!-test!]-@-->
<!--@-[!-test_clear_sale!]-@-->
<!--@-[!-no_busket_btn!]
[!settings_form_params_of_tv?
&id_param_val=`99`
&tv_options_name=`catalog_main_background`
&options_return_tpl=`config_buttons_options_tpl`
!]-@-->

<html>
	<head>
		<!--meta-->
		<meta charset="[(modx_charset)]"/>
		<title>[[if? &is=`[*longtitle*]:isempty` &then=`[*pagetitle*]` &else=`[*longtitle*]`]]</title>
		<meta name="description" content="[*description*]"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="format-detection" content="telephone=no">
		<meta name="format-detection" content="address=no">
		<base href="[(site_url)]">
		<link rel="shortcut icon" href="favicon.png" />

		<!--css-->
		<link rel="stylesheet" href="assets/templates/market/libs/uikit-2.26.2/css/uikit.min.css"/>
		<link rel="stylesheet" href="assets/templates/market/libs/uikit-2.26.2/css/components/tooltip.css"/>
		<link rel="stylesheet" href="assets/templates/market/libs/uikit-2.26.2/css/components/slidenav.css"/>
		<link rel="stylesheet" href="assets/templates/market/libs/jquery.bxslider/jquery.bxslider.css"/>
		<link rel="stylesheet" href="assets/templates/market/libs/owl.carousel/assets/owl.carousel.css"/>
		<link rel="stylesheet" href="assets/templates/market/libs/sweetalert-master/dist/sweetalert.css">
		<link rel="stylesheet" href="assets/templates/market/libs/nouislider/nouislider.css">


		<!--<link rel="stylesheet" href="assets/templates/market/css/style.css"/>-->
		<link rel="stylesheet" href="assets/templates/market/css/slick.css"/>
		<link rel="stylesheet" href="assets/templates/market/css/slick-theme.css"/>
		<link rel="stylesheet" href="assets/templates/market/libs/fancybox/jquery.fancybox.css">
		<link rel="stylesheet" href="assets/templates/market/libs/datepicker/datepicker.css">
		<link rel="stylesheet" href="assets/templates/market/libs/mCustomScrollbar/jquery.mCustomScrollbar.min.css">
		<link rel="stylesheet" href="assets/templates/market/libs/jscrollpane/jquery.jscrollpane.css">
		<link rel="stylesheet" href="assets/templates/market/libs/select2/select2.min.css">
		<!-- <link rel="stylesheet" href="assets/templates/market/libs/formValidator/jquery.formvalidator.css"> -->

		<!--@-Компилируемый из less файл css основной-@-->
		<link rel="stylesheet" href="[!color_change_less_compile_var2!]">

		<!--@-Компилируемый из less файл css малый для перебивания цветов в тестовом режиме-@-->
		[!test_mode_color_change!]


		<!--js-->
		<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script> -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
		<script src="assets/templates/market/libs/uikit-2.26.2/js/uikit.min.js" defer></script>
		<script src="assets/templates/market/libs/uikit-2.26.2/js/components/tooltip.min.js" defer></script>
		<script src="assets/templates/market/libs/uikit-2.26.2/js/components/lightbox.min.js" defer></script>
		<script src="assets/templates/market/libs/uikit-2.26.2/js/components/sticky.min.js" defer></script>
		<script src="assets/templates/market/libs/flexMenu-master/modernizr.custom.js" defer></script>
		<script src="assets/templates/market/libs/flexMenu-master/flexmenu.1.4.min.js" defer></script>
		<script src="assets/templates/market/libs/jquery.bxslider/jquery.bxslider.min.js" defer></script>
		<script src="assets/templates/market/libs/owl.carousel/owl.carousel.min.js" defer></script>
		<script src="assets/templates/market/libs/sweetalert-master/dist/sweetalert.min.js" defer></script>
		<script src="assets/templates/market/libs/jquery.spinner.min.js" defer></script> 
		<script src="assets/templates/market/libs/slick.min.js" defer></script> 
		<script src="assets/templates/market/libs/fancybox/jquery.fancybox.pack.js" defer></script> 
		<script src="assets/templates/market/libs/datepicker/datepicker.js" defer></script> 
		<script src="assets/templates/market/libs/mCustomScrollbar/jquery.mCustomScrollbar.concat.min.js" defer></script>
		<script src="assets/templates/market/libs/timer/jquery.time-to.js" defer></script> 
		<script src="assets/templates/market/libs/select2/select2.full.min.js" defer></script> 
		<script src="assets/templates/market/libs/jscrollpane/jquery.jscrollpane.min.js" defer></script> 
		<script src="assets/templates/market/libs/nouislider/nouislider.js" defer></script> 
		<script src="assets/templates/market/libs/formValidator/jquery.formvalidator.js" defer></script> 
		<!--<script src="assets/templates/market/libs/farbtastic.js" defer></script>-->
		<script src="assets/templates/market/libs/inputmask-multi/jquery.inputmask.bundle.min.js" defer></script>
		<script src="assets/templates/market/libs/inputmask-multi/jquery.inputmask-multi.min.js" defer></script>

		<script src="assets/templates/market/js/common.js" defer></script>
		<script src="assets/templates/market/js/custom.js" defer></script>
		<script src="assets/templates/market/js/ajax.js"defer></script>
		<script src="assets/templates/market/js/forms.js" defer></script>
		<script src="assets/templates/market/js/customer-settings.js" defer></script>
	</head>
	<body>
		{{contact_dealers_feedback_form}}
	</body>
</html>