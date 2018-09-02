<?php

class App
{

    public static function Init()
    {
        
        date_default_timezone_set('Europe/Moscow');
        db::getInstance()->Connect(Config::get('db_user'), Config::get('db_password'), Config::get('db_base'));

        if (php_sapi_name() !== 'cli' && isset($_SERVER) && isset($_GET)) {
            self::web(isset($_GET['path']) ? $_GET['path'] : '');
        }
    }

    protected static function web($url)
    {

        $url = explode("/", $url); // получаем текущий url и делим его на кусочки по "/"
        if (!empty($url[0])) {
            $_GET['page'] = $url[0];

            if (isset($url[1])) {
                if (is_numeric($url[1])) {
                    $_GET['id'] = $url[1]; // если есть второй фрагмент url и он числовой, то кладём его в переменную $_GET['id']
                } else {
                    $_GET['action'] = $url[1]; // если есть второй фрагмент url и он НЕ числовой, то кладём его в переменную $_GET['action']
                }
                if (isset($url[2])) {
                    $_GET['id'] = $url[2];
                }
            }
        } else {
            $_GET['page'] = 'index'; // если пусто т.е. если "/" нет, то это главная страница
        }

        if (isset($_GET['page'])) {
            $controllerName = ucfirst($_GET['page']) . 'Controller'; // собираем имя контроллера
            $methodName = isset($_GET['action']) ? $_GET['action'] : 'index';
            $controller = new $controllerName();
            $data = [
                'content_data' => $controller->$methodName($_GET),
                'title' => $controller->title
            ];

            $view = $controller->view . '/' . $methodName . '.html'; // собираем имя шаблона (папка+имя_шаблона)
            $loader = new Twig_Loader_Filesystem(Config::get('path_templates'));
            $twig = new Twig_Environment($loader);
            $template = $twig->loadTemplate($view);
            echo $template->render($data);

        }
    }


}