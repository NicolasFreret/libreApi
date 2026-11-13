<?php

function books(){
    $crud = new Crud();

    $where = "";
    if(isset($_GET['titre'])){
        $where = "WHERE titre = :titre";
    }

    $res = $crud->read('livres', '*', $where, $_GET);
    Utils::json($res); 
}