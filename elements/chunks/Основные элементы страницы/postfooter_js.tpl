name:postfooter_js
description:Код js и подключение библиотек js в нижней части сайта
======
<script src="//yastatic.net/es5-shims/0.0.2/es5-shims.min.js" defer></script>
<script src="//yastatic.net/share2/share.js" defer></script>

<!-- скрипт таймера -->
<script>
	// http://lexxus.github.io/jq-timeTo/
	$(document).ready(function(){
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
	});

</script>

<!--@-Виджет от bitrix24-@-->
<script data-skip-moving="true">
	(function(w,d,u,b){
		s=d.createElement('script');r=(Date.now()/1000|0);s.async=1;s.src=u+'?'+r;
		h=d.getElementsByTagName('script')[0];h.parentNode.insertBefore(s,h);
	})(window,document,'https://cdn.bitrix24.ru/b239605/crm/site_button/loader_6_r8ov2q.js');

	window.Bitrix24WidgetObject = window.Bitrix24WidgetObject || {};
	window.Bitrix24WidgetObject.handlers = {
		'form-init': function(form){

			form.presets = {	
				'UTM_CONTENT': '44',	
				'UTM_TERM': '55',	
				'LEAD_UF_CRM_1510822287': '66',	
				'my_param1': '77',
				'UTM_SOURCE': '11',	
				'UTM_MEDIUM': '22',
				'UTM_CAMPAIGN': '33',	

			};
		}
	};
</script>