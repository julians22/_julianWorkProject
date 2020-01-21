<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Divisi_model extends CI_Model {

    public function getAll()
    {
        $this->db->select('divisi.*, employe.emp_name');
        $this->db->from('divisi');
        $this->db->join('employe', 'employe.nik = divisi.nik_div_head');
        return $this->db->get()->result_array();
        
    }

    public function getDivisi()
    {
        $this->db->select('*');
        $this->db->from('divisi');
        return $this->db->get()->result_array();
    }
}

/* End of file Divisi_model.php */
