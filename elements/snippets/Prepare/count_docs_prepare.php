name:count_docs_prepare
description:Количество выводимых документов
======
<?php
<?php
/*count_docs_prepare*/
$count = count(isset($data['docs']) && is_array($data['docs']) ? $data['docs'] : array());
$modx->setPlaceholder('count_docs', $count);
/*Выводим информацию*/
return $data;
