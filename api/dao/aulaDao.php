<?php

require_once 'basicDao.php';

class AulaDao extends GenericDao {
	protected function getEntityClass() {
        return 'aulas';
    }
}

?>
