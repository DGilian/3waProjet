<?php
namespace Src\Controller;

use Silex\Application;
use Src\Model\ArticlesModel;


class PanierController {

  public function show(Application $app) {

    $post = new ArticlesModel();
    $tshirts = $post->listTshirt();

    //var_dump($tshirts);
    $array = ['showTshirts'=>$tshirts];
    return $app['twig']->render('panier.twig',$array);
  }
}
