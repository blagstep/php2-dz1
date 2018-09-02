<?
class Page {
	protected $title;
	protected $content;
	
	function __construct($title='', $content='') {
		$this->title = $title;
		$this->content = $content;
	}
	
	function render() {
		$page = file_get_contents("../templates/content/".__CLASS__.".tpl");
		$page = str_replace("{{TITLE}}",$this->title,$page);
		$page = str_replace("{{CONTENT}}",$this->content,$page);
		echo $page;
	}
}