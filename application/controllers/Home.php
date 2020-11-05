<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        // Your own constructor code
        $this->load->database();
        $this->load->library('session');
        // $this->load->library('stripe');
        /*cache control*/
        $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
        $this->output->set_header('Pragma: no-cache');
    }

    public function index() {
        $this->home();
    }

    public function home() {
        $page_data['page_name'] = "home";
        $page_data['page_title'] = get_phrase('home');
        $this->load->view('frontend/'.get_frontend_settings('theme').'/index', $page_data);
    }

    public function isLoggedIn() {
        if ($this->session->userdata('user_login') == 1)
        echo true;
        else
        echo false;
    }

    public function about_us() {
        $page_data['page_name'] = 'about_us';
        $page_data['page_title'] = get_phrase('about_us');
        $this->load->view('frontend/'.get_frontend_settings('theme').'/index', $page_data);
    }

    public function terms_and_condition() {
        $page_data['page_name'] = 'terms_and_condition';
        $page_data['page_title'] = get_phrase('terms_and_condition');
        $this->load->view('frontend/'.get_frontend_settings('theme').'/index', $page_data);
    }

    public function privacy_policy() {
        $page_data['page_name'] = 'privacy_policy';
        $page_data['page_title'] = get_phrase('privacy_policy');
        $this->load->view('frontend/'.get_frontend_settings('theme').'/index', $page_data);
    }

    // Version 1.4 codes
    public function login() {
        if ($this->session->userdata('admin_login')) {
            redirect(site_url('admin'), 'refresh');
        }
        $page_data['page_name'] = 'login';
        $page_data['page_title'] = get_phrase('login');
        $this->load->view('frontend/'.get_frontend_settings('theme').'/index', $page_data);
    }
}
