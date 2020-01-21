<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Dept_model extends CI_Model {

    public function getAll()
    {
        $this->db->select('*');
        $this->db->from('departemen');
        return $this->db->get()->result_array();
    }

    public function getDeptById($id)
    {
        $this->db->select('departemen.id, nama_departemen, div_id');
        $this->db->from('departemen');
        $this->db->join('divisi', 'divisi.id = departemen.div_id', 'left');
        $this->db->where('divisi.division', $id);
        return $this->db->get()->result_array();
    }

}

/* End of file Dept_model.php */

?>