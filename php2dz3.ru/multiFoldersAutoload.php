<?php

spl_autoload_register("multiFoldersAutoload");

/*
* функция находит все папки с классами и подключает от туда нужный класс ($className)
*/
function multiFoldersAutoload($className){
/*
  $pattern = __DIR__ . '/engine/*'; // все классы находятся в этой папке (engine) и в её подпапках, вот пути до этих подпапок и добавляем в массив.
  $folders = glob($pattern, GLOB_ONLYDIR);  
  array_unshift($folders, __DIR__.'/engine' ); // добавляем в начало массива основную папку engine (можно и в конец, но вроде, так, быстрее работать будет)
*/
    //папок стало много
  	$folders = [
  		'engine',
        'controllers',
        'lib',
        'models'
    ];
	$found = false;
	foreach($folders as $folder){
		$fullFileName = __DIR__. '/' .$folder . '/'  . $className . '.class.php';
    	//var_dump($fullFileName);
		if( is_file($fullFileName) ){
			require_once($fullFileName);
			$found = true;
      		break; // Раз мы нашли, что искали, то стоит прекратить в холостую гонять цикл
		}
	}
	if(!$found){
		throw new Exception('Unable to load ' . $className);
	}
	return true;
	
}

?>