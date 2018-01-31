<?php
namespace Src\Controller;
use Silex\Application;
use Symfony\Component\HttpFoundation\Request;

class GetpanierController{

  public function show(Application $app){

      return $app['twig']->render('panier.twig');
  }
}
