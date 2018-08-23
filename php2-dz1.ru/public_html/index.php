<?

echo '<h1>Урок 1.</h1>';

echo '<h2>Задания 1,2,3,4.</h2>';

/*
* Типовая внутренняя страница сайта (интеренет-магазина) (а)
*
*/
class Page {

  protected $title;       // h1 он же title
  //public $keywords;     // meta-keywords - лень так подробно делать
  //public $description;  // meta-description- лень так подробно делать
  //public $header;       // h1- лень так подробно делать
  protected $content;     // контент

  
  public function __construct($title='', $content='') {
    $this->title = $title;
    $this->content = $content;
  }

  public function render() {    
    $tpl = file_get_contents("../templates/content/".__CLASS__.".class.php");    
    $tpl = str_replace("{{title}}",$this->title,$tpl);
    $tpl = str_replace("{{content}}",$this->content,$tpl);
    echo $tpl;
  }

}
/* // */

/*
* Какой-то товар
*
*/
class CatalogPage extends Page{

  protected $price; // цена товара
  //protected $anons; // анонс товара для каталожной ленты - лень так подробно делать
  protected $currency;
  //protected $foto1; // Фото1 товара - лень так подробно делать
  //protected $foto2; // Фото2 товара - лень так подробно делать
  //protected $foto3; // Фото3 товара - лень так подробно делать
  //protected $foto4; // Фото4 товара - лень так подробно делать
  //protected $foto5; // Фото5 товара - лень так подробно делать
  //protected $count; // Количество товара на складе - лень так подробно делать


  function __construct($title='', $content='', $price='', $currency='RUB') {
    parent::__construct($title,$content);
    $this->price = $price;
    $this->currency = $currency;
  }

  protected function getPriceСurrency($currency) { // Метод перевода цены из рублей в нужную валюту
    $price = $this->price;
    $currency = $this->currency;


    if($currency == 'RUB'){ return $price . ' руб'; }
    if($currency == 'USD'){ return '$'. $price / 67.8; }
    if($currency == 'EUR'){ return '€'. $price / 78.2;}
    
  }  

  public function render() {    
    $tpl = file_get_contents("../templates/catalog/".__CLASS__.".class.php");    
    $tpl = str_replace("{{title}}",$this->title,$tpl);
    $tpl = str_replace("{{content}}",$this->content,$tpl);
    $tpl = str_replace("{{price}}",$this->getPriceСurrency($currency),$tpl);
    echo $tpl;
  }

}
/* // */



 
$page = new Page('Обычная страница', 'Контент обычной страницы, контент обычной страницы');
$page->render();

$page2 = new CatalogPage('Страница каталога', 'Контент страницы каталога, контент страницы каталога', 1000);
$page2->render();

$page3 = new CatalogPage('Страница каталога2', 'Контент страницы каталога2, контент страницы каталога2', 1000, 'EUR');
$page3->render();


echo '<h2>Задание 5.</h2>';

class A {
    public function foo() {
        static $x = 0;
        echo ++$x;
    }
}

echo '<p>Выведет:</p>';
$a1 = new A();
$a2 = new A();
$a1->foo();
$a2->foo();
$a1->foo();
$a2->foo();
echo '<p>Так как переменная $x является статичной т.е. принадлежит классу A, а не его объектам, следовательно при каждом вызове метода foo, переменная $x будет увеличиваться на еденицу</p>';


echo '<h2>Задание 5.2. оно же задание 6.</h2>';

class A2 {
    public function foo() {
        static $x = 0;
        echo ++$x;
    }
}
class B extends A2{
}
echo '<p>Выведет:</p>';
$a1 = new A2();
$b1 = new B();
$a1->foo(); 
$b1->foo(); 
$a1->foo(); 
$b1->foo();

echo '<p>Так как класса стало два, то и переменных $x стало две, следовательно при каждом вызове метода foo у своего класса, будет расти на еденицу своя переменная $x</p><hr>';



echo '<h2>Задание 7.</h2>';

class A3 {
    public function foo() {
        static $x = 0;
        echo ++$x;
    }
}
class B3 extends A3 {
}

echo '<p>Выведет тоже самое:</p>';
$a1 = new A3;
$b1 = new B3;
$a1->foo(); 
$b1->foo(); 
$a1->foo(); 
$b1->foo(); 

echo '<p>Если в конструктор не передаются параметры - скобки можно не ставить</p>';




