<?php
namespace Src\Model;
use Src\Classes\Database;

class OrderModel{

    public function addOrder($Firstname,$Lastname,$Mail,$Adress,$City,$Total){

    $db = new Database();
    $post = $db->executeSql("INSERT INTO commande
          (Firstname, Lastname, Mail,Adress,City,Total_amount)
          VALUES(?,?,?,?,?,?)",[$Firstname,$Lastname,$Mail,$Adress,$City,$Total]);
  }
}
