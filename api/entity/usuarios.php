<?php

class Usuarios implements JsonSerializable {
	private $id;
	private $email;
	private $senha;
	private $tipo;
	private $nome;

	function __construct($id, $email, $senha, $tipo, $nome) {
		$this->id = $id;
		$this->email = $email;
		$this->senha = $senha;
		$this->tipo = $tipo;
		$this->nome = $nome;
	}

	public function jsonSerialize() {
		return (object) get_object_vars($this);
	}

	public function getId() {
		return $this->id;
	}

	public function setId($id) {
		$this->id = $id;
	}

	public function getEmail() {
		return $this->email;
	}

	public function setEmail($email) {
		$this->email = $email;
	}

	public function getSenha() {
		return $this->senha;
	}

	public function setSenha($senha) {
		$this->senha = $senha;
	}
	
	public function getTipo() {
		return $this->tipo;
	}

	public function setTipo($tipo) {
		$this->tipo = $tipo;
	}
	
	public function getNome() {
		return $this->nome;
	}

	public function setNome($nome) {
		$this->nome = $nome;
	}
}

?>
