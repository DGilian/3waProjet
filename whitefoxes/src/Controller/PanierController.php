<?php
namespace Src\Controller;

use Silex\Application;
use Src\Model\ArticlesModel;
use Src\Model\UsersModel;
use Symfony\Component\HttpFoundation\Request;

class PanierController {

  public function show(Application $app) {

    $post = new ArticlesModel();
    $tshirts = $post->listTshirt();

    ?>
    <script>

    // function load(key) {
    //   let value = window.localStorage.getItem(key);
    //   return JSON.parse(value);
    // }
    // let local = load("quantity");
    // console.log(local);

    </script>
    <?php

    // var_dump($data);
    //var_dump($tshirts);
    $array = ['showTshirts'=>$tshirts];
    return $app['twig']->render('panier.twig',$array);
  }

  public function addUsers(Application $app, Request $request){

      $FirstName = $request->get('firstname');
      $LastName = $request->get('lastname');
      $Email = $request->get('mail');
      $adresse = $request->get('adresse');
      $city = $request->get('ville');

      $add = new UsersModel();
      $addOne = $add->addUsers($FirstName,$LastName,$Email,$adresse,$city);

      return $app['twig']->render('home.twig');
  }
}
