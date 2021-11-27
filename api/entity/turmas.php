<?php

class Turmas implements JsonSerializable {
	private $id;
	private $nome;
	private $periodo;

	function __construct($id, $nome, $periodo) {
		$this->id = $id;
		$this->nome = $nome;
		$this->periodo = $periodo;
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
	
	public function getNome() {
		return $this->nome;
	}

	public function setNome($nome) {
		$this->nome = $nome;
	}
	
	public function getPeriodo() {
		return $this->periodo;
	}

	public function setPeriodo($periodo) {
		$this->periodo = $periodo;
	}
}

?>
