<?php

    class Router{

     
        private array $routes = [];
       
    
        private function registerRoute(string $method, string $url, callable $fn){
            $this->routes[] = [
                'method'=>$method, 
                'url'=> $url, 
                'handler'=> $fn
            ];
        }

      
        public function get(string $url,  callable $fn):void{
            $this->registerRoute('GET', $url, $fn);
        }

        public function post(string $url, callable $fn):void{
            $this->registerRoute('POST', $url, $fn);
        }

        public function delete(string $url, callable $fn):void{
            $this->registerRoute('DELETE', $url, $fn);
        }

        public function patch(string $url, callable $fn):void{
            $this->registerRoute('PATCH', $url, $fn);
        }


        public function run():void{
           $method = $_SERVER['REQUEST_METHOD'];
           $url = rtrim(parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH),'/');

           foreach ($this->routes as $route) {
             if($route['url'] !== $url) continue;
             if($route['method'] !== $method ) continue;
             $route['handler']($_GET);
             return;
           }

           http_response_code(404);
           Utils::json(['error'=>404, 'message'=>'route non trouvée']);
        }
 

    }


    $router = new Router();

      

   
  



    