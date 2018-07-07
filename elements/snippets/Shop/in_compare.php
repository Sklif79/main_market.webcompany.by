name:in_compare
description:<strong>0.1</strong> Snippet for check is some item in compare
======
<?php
$id = isset($id)?$id:$modx->documentIdentifier;
$ids = isset($_COOKIE['shkCompareIds'])?$_COOKIE['shkCompareIds']:'';
if (empty($ids)) {
    return '0';
}
$ids = explode(',', $ids);

  if(in_array($id,$ids)){
      return '1';
  }
  else{
      return '0';
  }
?>
