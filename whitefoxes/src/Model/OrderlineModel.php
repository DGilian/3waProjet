<?php
namespace Src\Model;
use Src\Classes\Database;

class OrderlineModel{

    public function addOrderline($QuantityOrderer,$TshirtId,$orderId){

    $db = new Database();
    $post = $db->executeSql("INSERT INTO commandeLine
          (QuantityOrderer,TshirtId,CommandeId, PriceEach)
        SELECT  ?, id,?, Tshirt.price
        FROM Tshirt
        WHERE id = ?",[$QuantityOrderer,$orderId,$TshirtId]);
  }
}
