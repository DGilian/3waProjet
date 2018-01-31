<?php
namespace Src\Model;
use Src\Classes\Database;

class OrderlineModel{

    public function addOrderline($QuantityOrderer,$Tshirt_Id,$Commande_Id,$Price_Each){

    $db = new Database();
    $post = $db->executeSql("INSERT INTO commande_line
      (QuantityOrderer, Tshirt_Id, Commande_Id, Price_Each)
      VALUES (?,?,?,?)",[$QuantityOrderer,$Tshirt_Id,$Commande_Id,$Price_Each]);
  }
}
