<?php
defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        is_logged_in();
        $this->load->model('User_model', 'user');
        $this->load->model('Menu_model', 'menu');
        $this->load->model('Admin_model', 'admin');
    }
    public function index()
    {
        $data['title'] = 'My Profile';
        // model
        $data['user'] = $this->user->getUserData();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/index', $data);
        $this->load->view('templates/footer', $data);
    }

    public function edit()
    {
        $data['title'] = 'Edit Profile';
        $data['user'] = $this->db->get_where('user', ['email' => $this->session->userdata('email')])->row_array();
        $data['artikel'] = $this->db->get_where('tugas_akhir', ['email1' => $this->session->userdata('email')])->row_array();

        $this->form_validation->set_rules('detail', 'Detail Artikel', 'required|trim');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('user/edit', $data);
            $this->load->view('templates/footer');
        } else {
            $detail = $this->input->post('detail');

            // cek jika ada gambar yang akan diupload
            $file = null;
            if(isset($_FILES['file'])){
			
				$config['upload_path']   = "./assets/upload/"; 
				$config['allowed_types'] = 'pdf'; 
				$config['encrypt_name']  = true; 
				$config['max_size']      = 5000;  
				$this->load->library('upload', $config);
				
				if($this->upload->do_upload('file')){
					$file = $this->upload->data();
                    
                    $url = base_url().'assets/upload/'.$file['file_name'];
                    
                    $this->db->set('file_directory', $file['full_path']);
                    $this->db->set('file_name', $file['orig_name']);
                    $this->db->set('file_url', $url);
                }
            }
            
            $this->db->set('judul', $detail);
            $this->db->where('email1', $this->session->userdata('email'));
            $this->db->update('tugas_akhir');

            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Your profile has been updated!</div>');
            redirect('user');
        }
    }

   public function information()
    {
        $data['title'] = 'Akun Saya';
        // model
        $data['user'] = $this->user->getUserData();
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('user/information', $data);
        $this->load->view('templates/footer', $data);
    }

    public function changepass()
    {
        $data['title'] = 'Change Password';
        // model
        $data['user'] = $this->user->getUserData();

        $this->form_validation->set_rules('current_pass', 'Current Password', 'trim|required');
        $this->form_validation->set_rules('new_pass1', 'New Password', 'trim|required|min_length[5]|matches[new_pass2]');
        $this->form_validation->set_rules('new_pass2', 'Confirm New Password', 'trim|required|min_length[5]|matches[new_pass1]');

        if ($this->form_validation->run() == false) {
            $this->load->view('templates/header', $data);
            $this->load->view('templates/sidebar', $data);
            $this->load->view('templates/topbar', $data);
            $this->load->view('user/changepass', $data);
            $this->load->view('templates/footer');
        } else {
            $currenPass = $this->input->post('current_pass');
            $newPass = $this->input->post('new_pass1');
            $userPass = $data['user'];

            if (!password_verify($currenPass, $userPass['password'])) {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong Current Password!</div>');
                redirect('user/changepass');
            } else {
                if ($currenPass == $newPass) {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">New password should not be same as current password!</div>');
                    redirect('user/changepass');
                } else {
                    // password ok
                    $passwordHash = password_hash($newPass, PASSWORD_DEFAULT);

                    $this->db->set('password', $passwordHash);
                    $this->db->where('email', $this->session->userdata('email'));
                    $this->db->update('user');

                    $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Password Changed!</div>');
                    redirect('user/changepass');
                }
            }
        }
    }
}
