name:AjaxSearch_tplAjaxGrpResult
description:Grp Result Tpl for AjaxSearch
======
[+as.grpResultsDef:is=`1`:then=`
<div id="[+as.grpResultId+]" class="AS_ajax_grpResult">
[+as.headerGrpResult+]
[+as.listResults+]
[+as.footerGrpResult+]
</div>
`:else=`
<div class="AS_ajax_grpResultName">[+as.grpResultNameShow:is=`1`:then=`[+as.grpResultName+]`+]
<span class="ajaxSearch_grpResultsDisplayed">[+as.grpResultsDisplayedText+]</span></div>
`+]