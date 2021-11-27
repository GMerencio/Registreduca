<?php

require_once 'basicDao.php';

class TurmaDao extends GenericDao {
	protected function getEntityClass() {
        return 'turmas';
    }
}

?>
