<?php

require_once 'basicDao.php';

class UsuarioDao extends GenericDao {
	protected function getEntityClass() {
        return 'usuarios';
    }
}

?>
