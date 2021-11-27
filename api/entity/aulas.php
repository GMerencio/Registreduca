<?php

class Aulas implements JsonSerializable {
	private $id;
	private $inicio;
	private $fim;
	private $intervalo;
	private $presenca;
	private $professor_id;
	private $substituto_id;
	private $turma_id;

	function __construct($id, $inicio, $fim, $intervalo, $presenca, $professor_id, $substituto_id, $turma_id) {
		$this->id = $id;
		$this->inicio = $inicio;
		$this->fim = $fim;
		$this->intervalo = $intervalo;
		$this->presenca = $presenca;
		$this->professor_id = $professor_id;
		$this->substituto_id = $substituto_id;
		$this->turma_id = $turma_id;
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

	public function getInicio() {
		return $this->inicio;
	}

	public function setInicio($inicio) {
		$this->inicio = $inicio;
	}

	public function getFim() {
		return $this->fim;
	}

	public function setFim($fim) {
		$this->fim = $fim;
	}
	
	public function getIntervalo() {
		return $this->intervalo;
	}

	public function setIntervalo($intervalo) {
		$this->intervalo = $intervalo;
	}
	
	public function getPresenca() {
		return $this->presenca;
	}

	public function setPresenca($presenca) {
		$this->presenca = $presenca;
	}
	
	public function getProfessor_id() {
		return $this->professor_id;
	}

	public function setProfessor_id($professor_id) {
		$this->professor_id = $professor_id;
	}
	
	public function getSubstituto_id() {
		return $this->substituto_id;
	}

	public function setSubstituto_id($substituto_id) {
		$this->substituto_id = $substituto_id;
	}
	
	public function getTurma_id() {
		return $this->turma_id;
	}

	public function setTurma_id($turma_id) {
		$this->turma_id = $turma_id;
	}
}

?>
