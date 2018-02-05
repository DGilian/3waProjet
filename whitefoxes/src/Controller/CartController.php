<?php
namespace Src\Controller;

use Silex\Application;
use Src\Model\ArticlesModel;
use Src\Model\OrderModel;
use Src\Model\OrderlineModel;
use Symfony\Component\HttpFoundation\Request;

class CartController {

  public function show(Application $app) {

      $articles = new ArticlesModel();
      $tshirts = $articles->listTshirt();

      $array = ['showTshirts'=>$tshirts];
      return $app['twig']->render('cart.twig',$array);
  }

  public function validate(Application $app, Request $request){

      $Product = $request->get('product');
      $Quantity = $request->get('quantity');

      $FirstName = $request->get('firstname');
      $LastName = $request->get('lastname');
      $Mail= $request->get('mail');
      $Adress = $request->get('adress');
      $City = $request->get('city');
      $Total = $request->get('total');

      $add = new OrderModel();
      $orderId = $add->addOrder($FirstName,$LastName,$Mail,$Adress,$City,$Total);

      $orderLine = new OrderlineModel();

      $x = 0;
      foreach ($Product as $TshirtId) {

         $QuantityOrderer = $Quantity[$x];
         $addOrderLine = $orderLine->addOrderline($QuantityOrderer,$TshirtId,$orderId);
         $x++;
      }

      return $this->show($app);
  }
}
