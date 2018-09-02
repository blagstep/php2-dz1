<?
class CatalogView2 extends CatalogView {
	protected $softness;
	
	function __construct($title='', $content='', $anonse='', $price_old='', $price='', $tip='', $softness='') {
		parent::__construct($title,$content,$anonse,$price_old,$price,$tip);
    $this->softness = $softness;
	}





	
	function render() {    
    $page = file_get_contents("../templates/content/".__CLASS__.".tpl");    
		$page = str_replace("{{TITLE}}",$this->title,$page);
		$page = str_replace("{{CONTENT}}",$this->content,$page);
		$page = str_replace("{{ANONSE}}",$this->anonse,$page);
    $page = str_replace("{{PRICE_OLD}}",$this->price_old,$page);
    $page = str_replace("{{PRICE}}",$this->price,$page);
    $page = str_replace("{{TIP}}",$this->tip,$page);
    $page = str_replace("{{SOFTNESS}}",$this->softness,$page);
 
    $page = str_replace("{{DISCOUNT}}",$this->discount(),$page);
    
		echo $page;
	}
}