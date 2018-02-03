<?php
namespace Src\Controller;

use Silex\Application;
use Src\Model\ArticlesModel;
use Src\Model\NewsletterModel;
use Symfony\Component\HttpFoundation\Request;

class ArticlesController {

  public function show(Application $app){

    $articles = new ArticlesModel();
    $tshirts = $articles->listTshirt();

    $array = ['showTshirts'=>$tshirts];
    return $app['twig']->render('articles.twig',$array);
  }

  public function addMailNewsletter(Application $app, Request $request){

      $mail = $request->get('newsletter');

      $add = new NewsletterModel();
      $addOne = $add->addNewsletter($mail);

      return $app['twig']->render('home.twig');
  }
}
