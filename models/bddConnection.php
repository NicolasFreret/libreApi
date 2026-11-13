<?php

class bddConnection{

    protected string $user;
    protected string $pwd;
    protected string $bdd;
    protected string $host;

    function __construct( string $user, string $bdd, string $host, string $pwd){
        $this->bdd = $bdd;
        $this->host = $host;    
        $this->user = $user;
        $this->pwd = $pwd;

    }

    /**
     * Connexion à la base de donnée
     * @return object objet qui manipule les tables d'une base de données
     */
    public function database():object{
        try {
            return new PDO('mysql:host='.$this->host.';dbname='.$this->bdd. ';charset=utf8mb4', $this->user, $this->pwd,[
                PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                PDO::ATTR_EMULATE_PREPARES   => false, // vrai prepared statement
            ]);
        } catch (PDOException $e) {
            print_r($e);
        }
    }
}  
