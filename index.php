<?php
require 'models/crud.php';
require 'Utils/Utils.php';
require 'controllers/index.php';
require 'router.php';



$router->get('/books', 'books');
$router->run();
  