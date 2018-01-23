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

  public function addUsers($title,$author,$contents,$category){

    $db = new Database();
    $post = $db->executeSql("INSERT INTO users
    			(FirstName, LastName, Email,password,adresse,city,state,phone)
    			VALUES(?,?,?,?,?,?,?,?)",[$FirstName,$LastName,$Email,$password,$adresse,$city,$state,$phone]);
  }

}
/*
INSERT INTO Tshirt
			(name, description, quantity_in_stock,price,image)
			VALUES ('dragon','top','2','75','2.jpg')
*/

/*
INSERT INTO users
			(FirstName, LastName, Email,password,adresse,city,state,phone)
			VALUES ('jean','louis','david@laposte.net','troiswa','rue du coiffeur','cherbourg','france','0606060606')
*/
/*
INSERT INTO commande
			(user_id, total_amount, tax_rate,tax_amount)
			VALUES ('1','150','20','12.5')
      */
