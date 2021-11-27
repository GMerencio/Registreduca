<?php

require_once 'basicDao.php';

class ProfessorDao extends GenericDao {
	protected function getEntityClass() {
        return 'professores';
    }
}

?>
