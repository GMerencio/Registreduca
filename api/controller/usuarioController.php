<?php

header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: *");
header("Access-Control-Allow-Headers: *");
header('Content-type: application/json');

require_once '../entity/usuarios.php';
require_once '../dao/usuarioDao.php';
require_once '../conexao.php';
require_once 'entityController.php';

$controller = new EntityController(new UsuarioDao());
$controller->handleRequests();

?>
