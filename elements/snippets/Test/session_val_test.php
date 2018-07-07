name:session_val_test
description:Вывод значения  сессии страницы
======
<?php

echo "<pre>";
print_r(unserialize($_SESSION['purchases']));
var_dump(unserialize($_SESSION['addit_params']));
echo "</pre>";