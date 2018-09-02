<?php

//require_once '../models/photogal/photogal.php';


class PhotogalController extends Controller
{
    
    public $view = 'photogal'; // view = templates
    public $title;
    //public $photoAlbum;

    function __construct()
    {
        parent::__construct();
        $this->title .= ' | Фотогалерея';
    }
    // Фотогалерея метод индекс
    public function index($data) {
        $photoAlbum = Photogal::getPhotogal();
        $photoOne = Photogal::getPhoto($_GET['id']);


        /*print_r([
            'photoAlbum' => $photoAlbum,
            'photoOne' => $photoOne,
            'rubilnik' => $_GET['id'] ? true : false
        ]);*/


        return [
            'photoAlbum' => $photoAlbum,
            'photoOne' => $photoOne,
            'rubilnik' => $_GET['id'] ? true : false
        ];
    }

}