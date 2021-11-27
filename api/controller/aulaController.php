<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: *");
header("Access-Control-Allow-Headers: *");
header('Content-type: application/json');

require_once '../entity/aulas.php';
require_once '../dao/aulaDao.php';
require_once '../conexao.php';
require_once 'entityController.php';

$controller = new EntityController(new AulaDao());
$controller->handleRequests();

?>
