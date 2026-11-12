<?php

Interface ContratPokemon{
    public function cri():string;
    public function attack():int;

}

class Test implements ContratPokemon{

    private $name;

    function __construct($unNom){
        $this->name = $unNom;
    }

    public function cri():string{
        return 'klklklk';
    }

    public function attack():int{
        return 'klklklk';
    }

    public $propriete1 = 'prop1 public';
    protected $propriete2 = 'prop2 protected';
    private $propriete3 = 'prop3 private';

    public function methode1(){
        echo $this->coucou;
    }

    protected function methode2(){
        echo 'klklklk';
    }

    public function methode3(){
        echo $this->propriete2;
        echo $this->propriete3;
    }

 }

 class Test2 extends Test{

    public $age;

    //eSert à passer des paramètres pour la classe!
    function __construct(string $name, int $age){
        $this->age = $age;
        parent::__construct($name); 
    }

    public function methode4($arg){
        echo $this->propriete2;
        echo $arg;
        echo $this->propriete3;
    }

    static public function methode5():string{
        return 'coucou';
    }

     static public function methode6():string{
        $y = new Test2('jkj',52);
        return $y->age;
    }


 }

 
class bddConnection{

}

echo (new Test('Gérard'))->cri();
$t2 = new Test2('Tom',29);


echo Test2::methode5();
echo Test2::methode6();


//$t2->methode4('Léo tu dors');

// echo $t->propriete1;
// echo $t->methode3();
// echo $t->name;
// echo $t2->name;


// echo $t->propriete3;

