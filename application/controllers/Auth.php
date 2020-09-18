<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->db2 = $this->load->database('db2', TRUE);
    }

    public function index()
    {
        if ($this->session->userdata('email')) {
            redirect('user');
        }
        $this->form_validation->set_rules('username', 'Email or Username', 'trim|required');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Login Page';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/login');
            $this->load->view('templates/auth_footer');
        } else {
            $this->_login();
        }
    }

    public function emailtemp()
	{
		$this->load->view('auth/email');
	}

    private function _login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        // model
        $this->load->model('User_model', 'user');
        $user = $this->user->userCheckLogin($username);

        if ($user != null) {
            if ($user['is_active'] == 1) {
                if (password_verify($password, $user['password'])) {
                    $data = [
                        'email' => $user['email'],
                        'username' => $user['username'],
                        'role_id' => $user['role_id']
                    ];
                    $this->session->set_userdata($data);
                    if ($user['role_id'] == 1) {
                        redirect('admin');
                    } else {
                        redirect('user');
                    }
                } else {
                    $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Wrong password!</div>');
                    redirect('auth');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">This email has not been activated!</div>');
                redirect('auth');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Email is not registered!</div>');
            redirect('auth');
        }
    }

    public function registration()
    {
        if ($this->session->userdata('email')) {
            redirect('user');
        }
        // rules
        $this->form_validation->set_rules('first_name', 'First_Name', 'required|trim');
        $this->form_validation->set_rules('last_name', 'Last_Name', 'required|trim');
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email|is_unique[user.email]', [
            'is_unique' => 'This email is already exists'
        ]);
        $this->form_validation->set_rules('username', 'Username', 'required|trim|is_unique[user.username]', [
            'is_unique' => 'This username is already exists'
        ]);
        $this->form_validation->set_rules('password1', 'Password', 'required|trim|min_length[5]|matches[password2]', [
            'matches' => 'Password dont match',
            'min_length' => 'Password too short'
        ]);
        $this->form_validation->set_rules('password2', 'Confirm Password', 'required|trim|min_length[5]|matches[password1]');

        if ($this->form_validation->run() == false) {

            $data['title'] = 'Registration Page';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/registration');
            $this->load->view('templates/auth_footer');
        } else {
            $email = $this->input->post('email', true);
            $nomorta = $this->input->post('username', true);
            $first_name = $this->input->post('first_name', true);
            $last_name= $this->input->post('last_name', true);
            $password=$this->input->post('password1', true);
            $jenis = $this->input->post('jenis', true);
            
            switch ($jenis){
                case "Laporan Akhir" :
                    $username = "L".$nomorta;
                break;
                case "Skripsi" :
                    $username = "S".$nomorta;
            }
            
            $data = [
                'name' => $first_name.' '.$last_name,
                'email' => htmlspecialchars($email),
                'username' => $username,
                'image' => 'default.jpg',
                'password' => password_hash($password, PASSWORD_DEFAULT),
                'role_id' => 2,
                'is_active' => 1,
                'date_created' => time()
            ];
            $data2 = [
                'username' => $username,
                'password' => $password,
                'usertype' => 'user',
                'email' => htmlspecialchars($email),
                'name_given' => htmlspecialchars($this->input->post('first_name', true)),
                'name_family' => htmlspecialchars($this->input->post('last_name', true))

            ];
            $data3 = [
                'nomorta' => htmlspecialchars($this->input->post('username')),
                'jenis' =>  htmlspecialchars($this->input->post('jenis', true)),
                'nim1' =>  htmlspecialchars($this->input->post('nim', true)),
                'fnama1' =>  htmlspecialchars($first_name),
                'lnama1' =>  htmlspecialchars($last_name),
                'email1' =>  htmlspecialchars($email),
                'nim2' =>  htmlspecialchars($this->input->post('nim2', true)),
                'fnama2' =>  htmlspecialchars($this->input->post('first_name2', true)),
                'lnama2' =>  htmlspecialchars($this->input->post('last_name2', true)),
                'email2' =>  htmlspecialchars($this->input->post('email2', true)),
                'judul' => htmlspecialchars($this->input->post('judul', true)),
                'pembimbing1' => htmlspecialchars($this->input->post('pembimbing1', true)),
                'pembimbing2' => htmlspecialchars($this->input->post('pembimbing2', true)),
            ];
            // siapkan token
            // $token = base64_encode(random_bytes(32));
            // $user_token = [
            //     'email' => $email,
            //     'token' => $token,
            //     'date_created' => time()
            // ];

       	    $this->db->insert('user', $data);
            $this->db2->insert('user', $data2);
            $this->db->insert('tugas_akhir', $data3);
            // $this->db->insert('user_token', $user_token);

            $this->_sendEmail();

            $command='python3 /var/www/html/portal/application/controllers/Client.py -u '.$username.' -p '.$this->input->post('password1').'  -s 192.168.60.138 -m reg';
            $shlret=shell_exec($command);

            if(trim($shlret) == "done_register"){
            	$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Congratulations! your account has been created. Please open email for information of your account.</div>');
	    }else{
		$this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Congratulations! your account has been created. But there is a problem on registering your hosting space. Please open email for information of your account and contact hosting administrator.</div>');
	    }

	    redirect('auth');
        }
    }
    
    private function _sendEmail()
    {
        $config = [
            'protocol'  => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_user' => 'aismail@polinema.ac.id', // your gmail
            'smtp_pass' => '04juli91', // your password gmail
            'smtp_port' => 465,
            'mailtype'  => 'html',
            'charset'   => 'utf-8',
            'newline'   => "\r\n"
        ];

        $this->email->initialize($config);

        $first_name = $this->input->post('first_name', true);
        $last_name= $this->input->post('last_name', true);
        $nomorta = $this->input->post('username', true);
        $jenis = $this->input->post('jenis', true);
        switch ($jenis){
            case "Laporan Akhir" :
                $useraccount = "L".$nomorta;
            break;
            case "Skripsi" :
                $useraccount = "S".$nomorta;
            }
            
            $dataemail = [
                'nama' => $first_name.' '.$last_name,
                'account' => $useraccount,
            ];    
        $this->email->from('aismail@polinema.ac.id', 'Admin Portal'); // from('your email', 'Your Name');
        $this->email->to($this->input->post('email'));

            $this->email->subject('Account Registration Successfully');
            // $this->email->message("Account Registration Successfully, your username is: $useraccount");
            $this->email->message($this->load->view('auth/email',$dataemail, true));
        if ($this->email->send()) {
            return true;
        } else {
            echo $this->email->print_debugger();
            die;
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');
        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">You have been logged out! </div>');
        redirect('auth');
    }

    public function blocked()
    {
        $this->load->view('auth/blocked');
    }

    public function forgotpass()
    {
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');

        if ($this->form_validation->run() == false) {
            $data['title'] = 'Forgot Password';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/forgot-pass');
            $this->load->view('templates/auth_footer');
        } else {
            $email = $this->input->post('email');
            $user = $this->db->get_where('user', ['email' => $email, 'is_active' => 1])->row_array();

            if ($user) {
                $token = base64_encode(random_bytes(32));
                $user_token = [
                    'email' => $email,
                    'token' => $token,
                    'date_created' => time()
                ];
                $this->db->insert('user_token', $user_token);
                $this->_sendEmail($token, 'forgotPass');
                $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Please check your email to reset your password! </div>');
                redirect('auth/forgotpass');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">This email does not exist or activated! </div>');
                redirect('auth/forgotpass');
            }
        }
    }

    public function resetpass()
    {
        $email = $this->input->get('email');
        $token = $this->input->get('token');

        $user = $this->db->get_where('user', ['email' => $email])->row_array();

        if ($user) {
            $user_token = $this->db->get_where('user_token', ['token' => $token])->row_array();
            if ($user_token) {
                $this->session->set_userdata('reset_email', $email);
                $this->changePassword();
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Reset Password failed! Invalid token </div>');
                redirect('auth/forgotpass');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">Reset Password failed! Wrong email </div>');
            redirect('auth');
        }
    }

    public function changePassword()
    {
        if (!$this->session->userdata('reset-email')) {
            redirect('auth');
        }

        $this->form_validation->set_rules('password1', 'Password', 'trim|required|min_length[5]|matches[password2]');
        $this->form_validation->set_rules('password2', 'Repeat Password', 'trim|required|min_length[5]|matches[password1]');
        if ($this->form_validation->run() == false) {
            $data['title'] = 'Change Password';
            $this->load->view('templates/auth_header', $data);
            $this->load->view('auth/change-pass');
            $this->load->view('templates/auth_footer');
        } else {
            $password = password_hash($this->input->post('password1'), PASSWORD_DEFAULT);
            $email = $this->session->userdata('reset_email');
            $this->db->set('password', $password);
            $this->db->where('email', $email);
            $this->db->update('user');

            $this->session->unset_userdata('reset_email');
            $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">Password has been changed! Please login. </div>');
            redirect('auth');
        }
    }
}
