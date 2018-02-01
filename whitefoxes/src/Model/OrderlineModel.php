<?php
namespace Src\Model;
use Src\Classes\Database;

class OrderlineModel{

  //   public function addOrderline($QuantityOrderer,$TshirtId,$CommandeId,$PriceEach){
  //
  //   $db = new Database();
  //   $post = $db->executeSql("INSERT INTO commandeLine
  //     (QuantityOrderer, Tshirt_Id, Commande_Id, Price_Each)
  //     VALUES (?,?,?,?)",[$QuantityOrderer,$TshirtId,$CommandeId,$PriceEach]);
  // }
    public function addOrderline($QuantityOrderer,$TshirtId){

    $db = new Database();
    $post = $db->executeSql("INSERT INTO commandeLine
      ( QuantityOrderer, TshirtId, CommandeId, PriceEach)
    SELECT  $QuantityOrderer , $TshirtId, $CommandeId, Tshirt.price
    FROM Tshirt
    WHERE id = $TshirtId",[$QuantityOrderer,$TshirtId,$CommandeId]);
  }
}
