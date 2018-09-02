<?php

/**
 * Фотогалерея
 *
 * @return array
 */
function photoAlbum_get()
{
	$result = mysqli_query($GLOBALS['db'], "SELECT * FROM photogal ORDER BY img_counter DESC");

	$photoAlbum = [];
	while ($row = mysqli_fetch_assoc($result)) {
		$photoAlbum[] = $row;
	}
	return $photoAlbum;
}

/**
 * Получаем фото по ID
 *
 * @param int $id
 *
 * @return array|null
 */
function photo_get($id)
{
	$result = mysqli_query($GLOBALS['db'], "SELECT * FROM photogal WHERE id_img = '$id'");
	return mysqli_fetch_assoc($result);
}

function updatePhotoCount($id)
{
	$result = mysqli_query($GLOBALS['db'], "SELECT * FROM photogal WHERE id_img = '$id'");
	$result = mysqli_query($GLOBALS['db'], "UPDATE photogal SET img_counter = img_counter + 1 WHERE id_img = '$id'");
	//return mysqli_fetch_assoc($result);
}