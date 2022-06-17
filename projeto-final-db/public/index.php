<?php




ini_set('display_errors', 1);

include '../vendor/autoload.php';
use App\Controller\ErroController;

use App\Connection\Connection;
$connection=Connection::getConnection();



$query = 'select * from tb_category;';

$preparacao = $connection->prepare($query);
$preparacao->execute();



$url = explode('?', $_SERVER['REQUEST_URI'])[0];
$routes = include '../config/routes.php';

if (false === isset($routes[$url])) {

    (new ErroController)->notfoundAction();

    exit;
}

$controllerName = $routes[$url]['controller'];
$methodName = $routes[$url]['method'];

(new $controllerName())->$methodName();


