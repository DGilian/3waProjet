<?php
namespace Src\Controller;
use Silex\Application;
use Src\Model\NewsletterModel;
use Symfony\Component\HttpFoundation\Request;

class HomeController{

  public function show(Application $app){

      return $app['twig']->render('home.twig');
  }

  public function addMailNewsletter(Application $app, Request $request){

      $mail = $request->get('newsletter');

      $add = new NewsletterModel();
      $addOne = $add->addNewsletter($mail);

      return $app['twig']->render('home.twig');
  }
}
