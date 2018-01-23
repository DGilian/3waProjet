<?php
namespace Src\Controller;

use Silex\Application;
use Src\Model\ArticlesModel;

class ModelesController {

  public function show(Application $app){

    $post = new ArticlesModel();
    $tshirts = $post->listTshirt();

    //var_dump($tshirts);

    $array = ['showTshirts'=>$tshirts];
    return $app['twig']->render('modeles.twig',$array);
  }
}
