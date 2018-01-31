<?php
include "../vendor/autoload.php";

use Src\Classes\Database; //évite de rappeller la source de la classe pour chaque New Database
$app = new Silex\Application();
$app['debug'] = true; //ajoute les messages d'erreurs

//twig est un moteur de template  (templating)
$twig = new Silex\Provider\TwigServiceProvider(); //instancie twig
$app->register(new Silex\Provider\UrlGeneratorServiceProvider());

$app->register($twig, [ 'twig.path' => 'View' ]);

$app->get('/', 'Src\Controller\HomeController::show');
$app->post('/', 'Src\Controller\HomeController::addMailNewsletter');

$app->get('/articles', 'Src\Controller\ArticlesController::show');
$app->post('/articles', 'Src\Controller\HomeController::addMailNewsletter');

$app->get('/cart', 'Src\Controller\CartController::show');
$app->post('/cart/update', 'Src\Controller\CartController::update');

$app->post('/test', 'Src\Controller\CartController::addUsers');

$app->run();  //lance le code
