<?php

function books(){
    $crud = new Crud();
    Utils::json($crud->read('livres')); 
}