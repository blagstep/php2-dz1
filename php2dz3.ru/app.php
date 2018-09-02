<?php

require_once 'autoload.php';

try{
    App::init(); //engine/App.class.php
}
catch (PDOException $e){
    echo "DB is not available";
    var_dump($e->getTrace());
}
catch (Exception $e){
    echo $e->getMessage();
}
