<?php
namespace Src\Controller;

use Silex\Application;
use Src\Model\ArticlesModel;
use Src\Model\OrderModel;
use Src\Model\OrderlineModel;
use Symfony\Component\HttpFoundation\Request;

class CartController {

  public function show(Application $app) {

    $post = new ArticlesModel();
    $tshirts = $post->listTshirt();

    $array = ['showTshirts'=>$tshirts];
    return $app['twig']->render('cart.twig',$array);
  }

  public function validate(Application $app, Request $request){

      //id
      $Product = $request->get('product');
      var_dump($Product);
      //quantity
      $Quantity = $request->get('quantity');
      var_dump($Quantity);

      $FirstName = $request->get('firstname');
      $LastName = $request->get('lastname');
      $Mail= $request->get('mail');
      $Adress = $request->get('adresse');
      $City = $request->get('ville');
      $Total = $request->get('total');

      $add = new OrderModel();
      $addOne = $add->addOrder($FirstName,$LastName,$Mail,$Adress,$City,$Total);

      $orderLine = new OrderlineModel();

      $x = 0;
      foreach ($Product as $TshirtId) {

         $QuantityOrderer = $Quantity[$x];
         $addOrderLine = $orderLine->addOrderline($QuantityOrderer,$TshirtId);
         $x++;
      }

      return $this->show($app);
  }
}
