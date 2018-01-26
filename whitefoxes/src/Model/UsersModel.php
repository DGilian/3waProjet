<?php
namespace Src\Model;
use Src\Classes\Database;

class UsersModel{

    public function addUsers($FirstName,$LastName,$Email,$adresse,$city){

    $db = new Database();
    $post = $db->executeSql("INSERT INTO users
          (FirstName, LastName, Email,adresse,city)
          VALUES(?,?,?,?,?)",[$FirstName,$LastName,$Email,$adresse,$city]);
  }
}
