<?
class CatalogView extends Page {
	protected $anonse;
  protected $price_old;
  protected $price;
  protected $tip;
	
	function __construct($title='', $content='', $anonse='', $price_old='', $price='', $tip='') {
		parent::__construct($title,$content);
		$this->anonse = $anonse;
    $this->price_old = $price_old;
    $this->price = $price;
    $this->tip = $tip;
	}

  public function discount() {
    
    if( isset($this->price_old) && isset($this->price) ) {
      if( $this->price_old != '' && $this->price != '' ){
        return ((float)$this->price_old - (float)$this->price);
      }
      else{ return 'Скидок нет';}
    }else{
      return 'Скидок нет';
    }
    
  }




	
	function render() {    
    $page = file_get_contents("../templates/content/".__CLASS__.".tpl");    
		$page = str_replace("{{TITLE}}",$this->title,$page);
		$page = str_replace("{{CONTENT}}",$this->content,$page);
		$page = str_replace("{{ANONSE}}",$this->anonse,$page);
    $page = str_replace("{{PRICE_OLD}}",$this->price_old,$page);
    $page = str_replace("{{PRICE}}",$this->price,$page);
    $page = str_replace("{{TIP}}",$this->tip,$page);
    
    $page = str_replace("{{DISCOUNT}}",$this->discount(),$page);
 
		echo $page;
	}
}