<?php
namespace Src\Controller;

use Silex\Application;
use Src\Classes\Database;


class PanierController {

  public function show(Application $app) {

    return $app['twig']->render('panier.twig');
  }
}
