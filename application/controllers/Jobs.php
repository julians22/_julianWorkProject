<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Jobs extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Jobpro_model');
    }
    

    public function index()
    {
        $nik = $this->session->userdata('nik');
        $data['my'] = $this->Jobpro_model->getMyProfile($nik);
        $data['pos'] = $this->Jobpro_model->getAllPosition();
        $data['title'] = 'Job Profile';
        $data['user'] = $this->db->get_where('employe', ['nik' => $this->session->userdata('nik')])->row_array();

        $this->load->view('templates/user_header', $data);
        $this->load->view('templates/user_sidebar', $data);
        $this->load->view('templates/user_topbar', $data);
        $this->load->view('jobs/index', $data);
        $this->load->view('templates/user_footer');
        
    }

    public function jobprofile()
    {
        $nik = $this->session->userdata('nik');
        $data['my'] = $this->Jobpro_model->getMyProfile($nik);
        
        $data['title'] = 'Job Profile';
        $data['user'] = $this->db->get_where('employe', ['nik' => $this->session->userdata('nik')])->row_array();
        
        $this->load->view('templates/user_header', $data);
        $this->load->view('templates/user_sidebar', $data);
        $this->load->view('templates/user_topbar', $data);
        $this->load->view('user/job_profile', $data);
        $this->load->view('templates/user_footer');
    }
    
    //tujujuan jabatan
    public function edittujuanjbtn($id)
    {
        $data['title'] = 'Ubah Tujuan Jabatan';
        $data['tujab'] = $this->Jobpro_model->getTujabById($id);
        $data['user'] = $this->db->get_where('employe', ['nik' => $this->session->userdata('nik')])->row_array();

        $this->form_validation->set_rules('tujuan_jabatan', 'Form', 'trim|required');

        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates/user_header', $data);
            $this->load->view('templates/user_sidebar', $data);
            $this->load->view('templates/user_topbar', $data);
            $this->load->view('jobs/edittujab', $data);
            $this->load->view('templates/user_footer');
        } else {
            $this->Jobpro_model->updateTuJab();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Your Profile Has Been Updated ! </div>');
            redirect('user/jobprofile');
        }
    }

    public function addTanggungJawab()
    {
        $nik = $this->session->userdata('nik');
        $data['my'] = $this->Jobpro_model->getMyProfile($nik);
        $data['title'] = 'Tambah Tanggung Jawab Utama, Aktivitas Utama & Indikator Kerja ';
        $data['user'] = $this->db->get_where('employe', ['nik' => $this->session->userdata('nik')])->row_array();
        
        $this->form_validation->set_rules('tanggung_jawab', 'Form', 'trim|required');
        $this->form_validation->set_rules('aktivitas', 'List', 'trim|required');
        $this->form_validation->set_rules('pengukuran', 'List', 'trim|required');
        
        if ($this->form_validation->run() == FALSE) {
            // $this->load->view('templates/user_header', $data);
            // $this->load->view('templates/user_sidebar', $data);
            // $this->load->view('templates/user_topbar', $data);
            // $this->load->view('user/job_profile', $data);
            // $this->load->view('templates/user_footer');
            redirect('user/jobprofile');
        }else {
            $data = [
                'id_posisi' => $this->input->post('id'),
                'keterangan' => $this->input->post('tanggung_jawab'),
                'list_aktivitas' => $this->input->post('aktivitas'),
                'list_pengukuran' => $this->input->post('pengukuran')
            ];
            $this->db->insert('tanggung_jawab', $data);
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Your Profile Has Been Updated ! </div>');
            redirect('user/jobprofile');
        }
    }
    
    public function aksitanggungjawab($id_tgjwb)
    {
        $data['title'] = 'Edit Tanggung Jawab Utama, Aktivitas Utama & Indikator Kerja';
        $data['tj'] = $this->Jobpro_model->getTjById($id_tgjwb);
        $data['user'] = $this->db->get_where('employe', ['nik' => $this->session->userdata('nik')])->row_array();
        
        $this->form_validation->set_rules('tanggung_jawab', 'Form', 'trim|required');
        $this->form_validation->set_rules('aktivitas', 'List', 'trim|required');
        $this->form_validation->set_rules('pengukuran', 'List', 'trim|required');
        
        if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates/user_header', $data);
            $this->load->view('templates/user_sidebar', $data);
            $this->load->view('templates/user_topbar', $data);
            $this->load->view('jobs/edittanggungjawab', $data);
            $this->load->view('templates/user_footer');
        } else {
            $this->Jobpro_model->updateJP();
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Your Profile Has Been Updated ! </div>');
            redirect('user/jobprofile');
        }
    }

    public function deltj($id)
    {
        $this->db->where('id_tgjwb', $id);
        $this->db->delete('tanggung_jawab');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert"> Data Berhasi Dihapus! </div>');
        redirect('user/jobprofile', 'refresh');
    }

}

/* End of file Jobs.php */
