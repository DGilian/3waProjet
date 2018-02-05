# 3waProjet

Mon projet : vente en ligne de T-shirt

Architecture
--

*Base de donnée :* SQL

*Backend :* php , silex
 
*Front:* twig , javascript, css , html



Guide installation 
--

* `composer install`  (composer.json présent dans le dossier)

* importer le fichier de base de données (whitefoxes.sql)

* modification login, mot de passe accès BDD; (src/Classes/Database.php)
`$this->pdo = new PDO("mysql:host=localhost;dbname=whitefoxes","hack","helloworld",$options);`