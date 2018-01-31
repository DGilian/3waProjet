<?php
namespace Src\Model;
use Src\Classes\Database;

class ArticlesModel{

  public function listTshirt(){

    $db = new Database();
    $tshirts = $db->query("SELECT id,name,description,price,image
              FROM Tshirt");
    return $tshirts;
  }

  public function addTshirt($name,$description,$quantity_in_stock,$price,$image){

    $db = new Database();
    $post = $db->executeSql("INSERT INTO Tshirt
      			(name, description, quantity_in_stock,price,image)
      			VALUES (?,?,?,?,?')",[$name,$description,$quantity_in_stock,$price,$image]);
  }
}
/*
INSERT INTO Tshirt
			(name, description, quantity_in_stock,price,image)
			VALUES ('dragon','top','2','75','2.jpg')
*/
