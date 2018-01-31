<?php
namespace Src\Controller;

use Silex\Application;
use Src\Model\ArticlesModel;
use Src\Model\OrderModel;
use Symfony\Component\HttpFoundation\Request;

class PanierController {

  public function show(Application $app) {

    var_dump($_GET['testajax']);

    $post = new ArticlesModel();
    $tshirts = $post->listTshirt();

    $array = ['showTshirts'=>$tshirts];
    return $app['twig']->render('panier.twig',$array);
  }

  public function addOrder(Application $app, Request $request){

      $FirstName = $request->get('firstname');
      $LastName = $request->get('lastname');
      $Mail= $request->get('mail');
      $Adress = $request->get('adresse');
      $City = $request->get('ville');
      $Total = $request->get('total');

      $add = new OrderModel();
      $addOne = $add->addOrder($FirstName,$LastName,$Mail,$Adress,$City,$Total);

      return $this->show($app);
  }
}
