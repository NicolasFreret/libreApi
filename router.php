<?php

    // $router->get('/books', function(){

    // })

    //$router->post('/clients', function(){

    //})

    class Router{


        private array $routes = [];
       
        private function checkMethod(string $method){
            if($_SERVER['REQUEST_METHOD'] != $method) return false;
            return true;
        }

        private function registerRoute(string $url){
            if(!in_array($url, $this->routes)) array_push($this->routes,$url);
        }

        private function checkUrl(){
            
            if(!in_array($_SERVER['REQUEST_URI'], $this->routes)) return false;
            return true;
        }

      


        public function get(string $url,  callable $fn){
            $this->registerRoute($url);
            if( !in_array($_SERVER['REQUEST_URI'], $this->routes)  ) return;
            return $fn();

        }

        public function post(string $url, callable $fn){
            if(!$this->checkMethod('POST')) return;
        }

        

    }

    
    $router = new Router();



    $router->get('/librAPI/books', function(){
        echo 'joiee';
    });
  
    $router->get('/librAPI/clients', function(){
        echo 'je suis sur book';
    });
  

    // switch ($_SERVER['REQUEST_URI']) {
    //     case '/librAPI/books/':
    //         echo 'je suis sur book';
    //         break;
    //     case '/authors/':
    //         echo 'je suis sur auteur';
    //     break;
    //     default:
           
    //         header("HTTP/1.0 404 Not Found");
            
    //         break;
    // }

    