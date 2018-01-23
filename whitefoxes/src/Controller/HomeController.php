<?php
namespace Src\Controller;

use Silex\Application;


class HomeController{

  public function show(Application $app){

      return $app['twig']->render('home.twig');
  }
}
