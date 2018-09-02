<?php

class Photogal {

	public static function getPhotogal()
    {
		$sql = "SELECT * FROM photogal ORDER BY img_counter DESC";  
        $result = db::getInstance()->select($sql);
        //print_r(['photoAlbum' => $result]);
        return $result;
    }

    public static function getPhoto( $id )
    { 
		$sql = "SELECT * FROM photogal WHERE id_img = '$id'";  
        $result = db::getInstance()->select($sql);
        //print_r(['photo' => $result]);
        return $result;
    }

}