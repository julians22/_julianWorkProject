<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Jobpro_model extends CI_Model {

    public function getMyprofile($nik)
    {
        $this->db->select('employe.*, divisi.division, departemen.nama_departemen, position.position_name, position.id_atasan1 as posnameatasan1,
                            profile_jabatan.tujuan_jabatan');
        $this->db->from('employe');
        $this->db->join('divisi', 'divisi.id = employe.id_div');
        $this->db->join('departemen', 'departemen.id = employe.id_dep');
        $this->db->join('position', 'position.id = employe.position_id');
        $this->db->join('profile_jabatan', 'profile_jabatan.id_posisi = position.id');
        
        $this->db->where('employe.nik', $nik);
        return $this->db->get()->row_array();
    }

    public function getAllPosition()
    {
        
        return $this->db->get('position')->result_array();
        
    }

    public function getTujabById($id)
    {
        return $this->db->get_where('profile_jabatan', ['id_posisi' => $id])->row_array();
    }

    public function getTjById($id)
    {
        return $this->db->get_where('tanggung_jawab', ['id_tgjwb' => $id])->row_array();
    }

    public function updateJP()
    {
        $data = [
            'keterangan' => $this->input->post('tanggung_jawab'),
            'list_aktivitas' => $this->input->post('aktivitas'),
            'list_pengukuran' => $this->input->post('pengukuran')
        ];
        $this->db->where('id_tgjwb', $this->input->post('id'));
        $this->db->update('tanggung_jawab', $data);
    }

    public function updateTuJab()
    {
        $data = [
            'tujuan_jabatan' => $this->input->post('tujuan_jabatan')
        ];
        $this->db->where('id_posisi', $this->input->post('id'));
        $this->db->update('profile_jabatan', $data);
    }

}

/* End of file Jobpro_model.php */
