<?php
namespace Src\Controller;

use Silex\Application;
use Src\Model\ArticlesModel;
use Src\Model\OrderModel;
use Symfony\Component\HttpFoundation\Request;

class CartController {

  public function show(Application $app) {

    //var_dump($_GET['testajax']);

    $post = new ArticlesModel();
    $tshirts = $post->listTshirt();

    $array = ['showTshirts'=>$tshirts];
    return $app['twig']->render('cart.twig',$array);
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

  public function update(Request $request)
  {
      $success = false;
      // decode POST content
      $cartContent = json_decode($request->getContent());
      // check format, should be an array
      if (is_array($cartContent)) {
          setcookie("cart", json_encode($cartContent), time() + 3600);  /* expire dans 1 heure */
          $success = true;
      }

      return json_encode($success);
  }
}
