<?php

class DatabaseConnection {	
	private $dbh;
	private $result;
	
	function __construct() {
		$this->connect();
	}

	function connect() {
		require 'config.php';
		
		//Conexão com a porta
		//$this->dbh = new PDO("mysql:host=$host;port=$port;dbname=" . $database, $user, $password);
	
		//Conexão sem a porta
		$this->dbh = new PDO("mysql:host=$host;dbname=" . $database, $user, $password);
		
		if($this->dbh === false){
			die("ERRO: Sem conexão. " . mysqli_connect_error());
		}
	}

	function getDbh() {
		return $this->dbh;
	}	
}
