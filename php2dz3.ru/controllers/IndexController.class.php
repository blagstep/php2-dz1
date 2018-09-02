<?php

class IndexController extends Controller
{
    public $view = 'index'; // view = templates
    public $title;

    function __construct()
    {
        parent::__construct();
        $this->title .= ' | Главная';
    }
    // главная страница метод индекс
    public function index($data) {
        return [];
    }

}