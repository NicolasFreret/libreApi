<?php
require 'models/crud.php';
require 'Utils/Utils.php';
require 'controllers/index.php';
require 'router.php';



 $router->get('/librAPI/books', 'books');
//  $router->get('/librAPI/clients', clients());
 $router->run();
  