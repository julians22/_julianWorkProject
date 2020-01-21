<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Master extends CI_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Employe_model');
        $this->load->model('Divisi_model');
        $this->load->model('Dept_model');
        is_logged_in();
        
    }
    

    public function employe()
    {
        $data['title'] = 'Master Employe';
        $data['user'] = $this->db->get_where('employe', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['employe'] = $this->Employe_model->getAll();
        
        // $this->form_validation->set_rules('menu', '<b>Menu Name</b>', 'required');
        
        // if ($this->form_validation->run() == FALSE) {
            $this->load->view('templates/user_header', $data);
            $this->load->view('templates/user_sidebar', $data);
            $this->load->view('templates/user_topbar', $data);
            $this->load->view('master/employe', $data);
            $this->load->view('templates/user_footer');
        // } else {
        //     $this->db->insert('user_menu', ['menu' => $this->input->post('menu')]);
        //     $this->session->set_flashdata('message', '<div class="flash-data" data-flashdata="Added"></div>');
        //     redirect('menu');
        // }
    }

    public function divisi()
    {
        $data['title'] = 'Master Divisi';
        $data['user'] = $this->db->get_where('employe', ['nik' => $this->session->userdata('nik')])->row_array();
        $data['divisi'] = $this->Divisi_model->getAll();

        $this->form_validation->set_rules('divisi', 'Division', 'trim|required');
        $this->form_validation->set_rules('nik', 'NIK', 'required|min_length[8]|max_length[8]');
        
        $this->load->view('templates/user_header', $data);
        $this->load->view('templates/user_sidebar', $data);
        $this->load->view('templates/user_topbar', $data);
        $this->load->view('master/divisi', $data);
        $this->load->view('templates/user_footer');
    }

    public function getDeptAjax()
    {
        $val = $this->input->post('div_id');
        if ($val) {
            $data = $this->Dept_model->getDeptById($this->input->post('div_id'));
            echo json_encode($data);
        }else{
            $data = $this->Dept_model->getAll();
            echo json_encode($data);
        }
    }

}

/* End of file Master.php */
