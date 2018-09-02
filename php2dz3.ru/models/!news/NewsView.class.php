<?
class NewsView extends Page {
	protected $autor;
	
	function __construct($title='', $content='', $autor='') {
		parent::__construct($title,$content);
		$this->autor = $autor;
	}
	
	function render() {
		$page = file_get_contents("../templates/content/".__CLASS__.".tpl");
		$page = str_replace("{{TITLE}}",$this->title,$page);
		$page = str_replace("{{CONTENT}}",$this->content,$page);
		$page = str_replace("{{AUTOR}}",$this->autor,$page);
		echo $page;
	}
}