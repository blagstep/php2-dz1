<?php
require_once 'lib/Twig/Autoloader.php';  // твиг
Twig_Autoloader::register();

/*вся эта хрень в: /engine/App.class.php, а try{}catch(){} в /app.php
$loader = new Twig_Loader_Filesystem('../templates'); 
$twig = new Twig_Environment($loader, array(
    'cache'       => 'compilation_cache',
    'auto_reload' => true
));
*/

/*
себе любимому: почитай, когда всё сломается (твиг) вот это:
https://ruseller.com/lessons.php?id=1648
https://x-twig.ru/for_developers
И видео php2 урок 3 начиная с 1час30мин
*/

require_once('multiFoldersAutoload.php'); // подгрузка классов

?>
