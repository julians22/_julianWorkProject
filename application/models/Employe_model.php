<?php


defined('BASEPATH') OR exit('No direct script access allowed');

class Employe_model extends CI_Model {

    public function sessEmp($nik)
    {
        $this->db->select('user.nik, user.role_id, user.is_active, employe.emp_name');
        $this->db->from('user');
        $this->db->join('employe', 'employe.nik = user.nik', 'left');
        $this->db->where('employe.nik', $nik);
        $this->db->get();
        
        return $this->db->get()->result_array();
    }

    public function getAll()
    {
        return $this->db->get('employe')->result_array();
    }

}

/* End of file Employe_model.php */
