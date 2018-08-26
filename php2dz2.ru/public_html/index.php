<?

echo '<h1>Урок 2. ООП в PHP. Расширенное изучение.</h1>';

/*
* Абстрактный товар (а)
*
*/
abstract class GoodsAbstract {

  const INCOME = 25;  //25%
  
  protected $title; // просто заголовок он же тайтл
  protected $price; // цена
  protected $count; // количество
  static $profitSumm = 0;// доход
 
 
  public function __construct($title='', $price='', $count='') {
    $this->title = $title;
    $this->price = $price;
    $this->count = $count;
  }

  abstract protected function getPriceFinal(); // Метод подсчёта финальной стоимости (в) (д)
  abstract protected function getProfit(); // Метод подсчёта дохода с продаж (г) (д)

}


/*
* Штучный физический товар (б)
*
*/
class PhysicalGoods extends GoodsAbstract{

  function __construct($title='', $price='', $count='') {
    parent::__construct($title,$price,$count);
    
  }

  protected function getPriceFinal() { // Метод подсчёта финальной стоимости (в)
    $price = $this->price;
    $count = $this->count;

    return $price * $count;
  }  

  protected function getProfit() { // Метод подсчёта дохода с продаж (г)
    $price = $this->price;
    $count = $this->count;

    return $price * $count * self::INCOME/100;
  }

  protected function getProfitSumm() { // Метод подсчёта дохода среди всех товаров
    $price = $this->price;
    $count = $this->count;
    self::$profitSumm += $price * $count * self::INCOME/100; // Сумма доходов с продаж
    return self::$profitSumm;
  }

  protected function getProfitSummInGoods() { // Метод подсчёта дохода среди товаров одного типа
    static $profitSummInGoods = 0;
    $price = $this->price;
    $count = $this->count;
    $profitSummInGoods += $price * $count * self::INCOME/100;
    return $profitSummInGoods;
  }

  public function render() {    
    $data = file_get_contents("../templates/data/".__CLASS__.".tpl");    
    $data = str_replace("{{title}}",$this->title,$data);
    $data = str_replace("{{price}}",$this->price,$data);
    $data = str_replace("{{count}}",$this->count,$data);
    $data = str_replace("{{priceFinal}}",$this->getPriceFinal(),$data);    
    $data = str_replace("{{profit}}",$this->getProfit(),$data);
    $data = str_replace("{{profitSumm}}",$this->getProfitSumm(),$data);
    $data = str_replace("{{profitSummInGoods}}",$this->getProfitSummInGoods(),$data);
 
    echo $data;
  }

}


/*
*  Цифровой товар (б)
*
*/
class DigitalGoods extends PhysicalGoods{

  function __construct($title='', $price='', $count='') {
    parent::__construct($title,$price,$count);
    $this->price = $price/2; // Так идеалогически верно? Работает вроде..э
  }

  public function render() {    
    $data = file_get_contents("../templates/data/".__CLASS__.".tpl");    
    $data = str_replace("{{title}}",$this->title,$data);
    $data = str_replace("{{price}}",$this->price,$data);
    $data = str_replace("{{count}}",$this->count,$data);
    $data = str_replace("{{priceFinal}}",$this->getPriceFinal(),$data);    
    $data = str_replace("{{profit}}",$this->getProfit(),$data);
    $data = str_replace("{{profitSumm}}",$this->getProfitSumm(),$data);
    $data = str_replace("{{profitSummInGoods}}",$this->getProfitSummInGoods(),$data);
 
    echo $data;
  }

}


/*
*  Товар на вес (б)
*
*/
class WeightGoods extends PhysicalGoods{
  
  function __construct($title='', $price='', $count='') {
    parent::__construct($title,$price,$count);
  }

  public function render() {    
    $data = file_get_contents("../templates/data/".__CLASS__.".tpl");    
    $data = str_replace("{{title}}",$this->title,$data);
    $data = str_replace("{{price}}",$this->price,$data);
    $data = str_replace("{{count}}",$this->count,$data);
    $data = str_replace("{{priceFinal}}",$this->getPriceFinal(),$data);    
    $data = str_replace("{{profit}}",$this->getProfit(),$data);
    $data = str_replace("{{profitSumm}}",$this->getProfitSumm(),$data);
    $data = str_replace("{{profitSummInGoods}}",$this->getProfitSummInGoods(),$data);

    echo $data;
  }

}


 
$physical = new PhysicalGoods('Физический товар', '1000', '3');
$physical->render();

$physical2 = new PhysicalGoods('Физический товар2', '1200', '5');
$physical2->render();


$digital = new DigitalGoods('Цифровой товар', '2000', '2');
$digital->render();

$digital2 = new DigitalGoods('Цифровой товар2', '1000', '1');
$digital2->render();


$weight = new WeightGoods('Весовой товар', '5000', '2.5');
$weight->render();

$weight2 = new WeightGoods('Весовой товар2', '3000', '2.5');
$weight2->render();



?>




