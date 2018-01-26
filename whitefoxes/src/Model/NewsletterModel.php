<?php
namespace Src\Model;
use Src\Classes\Database;

class NewsletterModel{

      public function addNewsletter($mail){

        $db = new Database();
        $post = $db->executeSql("INSERT INTO newsletters
                (mail)
                VALUES (?)",[$mail]);
      }
}
