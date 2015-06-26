<?php

header('Content-Type: application/json');
mb_internal_encoding('utf-8');

require_once "Core/Autoloader.php";

spl_autoload_register('Autoloader::loader');

$app = new Core\App();
$app->run();