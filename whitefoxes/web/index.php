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

$app->get('/panier', 'Src\Controller\PanierController::show');

$app->get('/modeles', 'Src\Controller\ModelesController::show');

$app->run();  //lance le code
