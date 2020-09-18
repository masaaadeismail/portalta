<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reg extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		//load class database
        $DB1=$this->load->database('default',TRUE);
        $DB2=$this->load->database('db2',TRUE);

        $querydb1 = $DB1->select('*')->get('user'); // tampil data DB1 table menu
        $user1 = $querydb1->result();

        $querydb2 = $DB2->select('*')->get('register'); // tampil data DB2 table admin
        $user2 = $querydb2->result();

        $viewData = array();
        $data['db1Data']=$user1;
        $data['db2Data']=$user2;

        $this->load->view('reg/reg',$data);
    
    }
    
    public function tambahdatamhs() {
        $data=[
            "nama" => $this->input->post('nama',true), // ini sama dengan htmlspecialchars($_POST['nama'])
            "nim" => $this->input->post('nim',true),
            "email" => $this->input->post('email',true),
            "jurusan" => $this->input->post('jurusan',true)
        ];
        // $this->db->insert('Table', $object);
        $this->db->insert('mahasiswa', $data);
    
    }

}