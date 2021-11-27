<?php

ini_set('display_errors', 1);

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: *");
header("Access-Control-Allow-Headers: *");
header('Content-type: application/json');

require_once '../entity/professores.php';
require_once '../dao/professorDao.php';
require_once '../conexao.php';
require_once 'entityController.php';

$controller = new EntityController(new ProfessorDao());
$controller->handleRequests();
