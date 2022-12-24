<?php
  class Users extends Controller {
    public function __construct(){
      $this->userModel = $this->model('User');
    }

    public function register(){
      // Check for POST
      if($_SERVER['REQUEST_METHOD'] == 'POST'){
        // Process form
  
        // Sanitize POST data
        $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

        // Init data
        $data =[
          'name' => trim($_POST['name']),
          'nickname' => trim($_POST['nickname']),
          'password' => trim($_POST['password']),
          'confirm_password' => trim($_POST['confirm_password']),
          'name_err' => '',
          'nickname_err' => '',
          'password_err' => '',
          'confirm_password_err' => ''
        ];

        // Validate nickname
        if(empty($data['nickname'])){
          $data['nickname_err'] = 'Pleae enter nickname';
        } else {
          // Check nickname
          if($this->userModel->findUserBynickname($data['nickname'])){
            $data['nickname_err'] = 'nickname is already taken';
          }
        }

        // Validate Name
        if(empty($data['name'])){
          $data['name_err'] = 'Pleae enter name';
        }

        // Validate Password
        if(empty($data['password'])){
          $data['password_err'] = 'Pleae enter password';
        } elseif(strlen($data['password']) < 6){
          $data['password_err'] = 'Password must be at least 6 characters';
        }

        // Validate Confirm Password
        if(empty($data['confirm_password'])){
          $data['confirm_password_err'] = 'Pleae confirm password';
        } else {
          if($data['password'] != $data['confirm_password']){
            $data['confirm_password_err'] = 'Passwords do not match';
          }
        }

        // Make sure errors are empty
        if(empty($data['nickname_err']) && empty($data['name_err']) && empty($data['password_err']) && empty($data['confirm_password_err'])){
          // Validated
          
          // Hash Password
          $data['password'] = password_hash($data['password'], PASSWORD_DEFAULT);

          // Register User
          if($this->userModel->register($data)){
            flash('register_success', 'You are registered and can log in');
            redirect('users/login');
          } else {
            die('Something went wrong');
          }

        } else {
          // Load view with errors
          $this->view('users/register', $data);
        }

      } else {
        // Init data
        $data =[
          'name' => '',
          'nickname' => '',
          'password' => '',
          'confirm_password' => '',
          'name_err' => '',
          'nickname_err' => '',
          'password_err' => '',
          'confirm_password_err' => ''
        ];

        // Load view
        $this->view('users/register', $data);
      }
    }

    public function login(){
      // Check for POST
      if($_SERVER['REQUEST_METHOD'] == 'POST'){
        // Process form
        // Sanitize POST data
        $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
        
        // Init data
        $data =[
          'nickname' => trim($_POST['nickname']),
          'password' => trim($_POST['password']),
          'nickname_err' => '',
          'password_err' => '',      
        ];

        // Validate nickname
        if(empty($data['nickname'])){
          $data['nickname_err'] = 'Pleae enter nickname';
        }

        // Validate Password
        if(empty($data['password'])){
          $data['password_err'] = 'Please enter password';
        }

        // Check for user/nickname
        if($this->userModel->findUserBynickname($data['nickname'])){
          // User found
        } else {
          // User not found
          $data['nickname_err'] = 'No user found';
        }

        // Make sure errors are empty
        if(empty($data['nickname_err']) && empty($data['password_err'])){
          // Validated
          // Check and set logged in user
          $loggedInUser = $this->userModel->login($data['nickname'], $data['password']);

          if($loggedInUser){
            // Create Session
            $this->createUserSession($loggedInUser);
          } else {
            $data['password_err'] = 'Password incorrect';

            $this->view('users/login', $data);
          }
        } else {
          // Load view with errors
          $this->view('users/login', $data);
        }


      } else {
        // Init data
        $data =[    
          'nickname' => '',
          'password' => '',
          'nickname_err' => '',
          'password_err' => '',        
        ];

        // Load view
        $this->view('users/login', $data);
      }
    }

    public function createUserSession($user){
      $_SESSION['user_id'] = $user->id;
      $_SESSION['user_nickname'] = $user->nickname;
      $_SESSION['user_name'] = $user->name;
      redirect('pages');
    }

    public function logout(){
      unset($_SESSION['user_id']);
      unset($_SESSION['user_nickname']);
      unset($_SESSION['user_name']);
      session_destroy();
      redirect('users/login');
    }
  }