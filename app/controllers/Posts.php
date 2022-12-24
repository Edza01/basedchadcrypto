<?php
class Posts extends Controller
{
  // public function __construct()
  // {
  //   $this->postModel = $this->model('Post');
  // }

  // public function index()
  // {
  //   // Get posts if no POST method was used
  //   $posts = $this->postModel->getPosts();

  //   $data = [
  //     'posts' => $posts
  //   ];


  //   $this->view('posts/index', $data);
  // }



  // public function add()
  // {
  //   if ($_SERVER['REQUEST_METHOD'] == 'POST') 
  //   {
  //     // Sanitize POST array
  //     $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_FULL_SPECIAL_CHARS);

  //     // Check if api return no error
  //     if ($this->postModel->addWeatherCast(trim($_POST['image_name'])) != false) {

  //       $data = [
  //         'image_name' => ucfirst(trim($_POST['image_name'])),
  //         'user_id' => $_SESSION['user_id'],
  //         'image_name_err' => ''
  //       ];

  //       // Validate data
  //       if (empty($data['image_name'])) {
  //         $data['image_name_err'] = 'Please enter city';
  //       }

  //       if ($this->postModel->checkIfCountryExists($data['image_name'])) {
  //         $data['image_name_err'] = 'City already exists';
  //       }

  //       // Make sure no errors
  //       if (empty($data['image_name_err'])) {
  //         // Validated
  //         if ($this->postModel->addPost($data)) {
  //           flash('post_message', 'Post Added');
  //           redirect('posts');
  //         } else {
  //           die('Something went wrong');
  //         }
  //       } else {
  //         // Load view with errors
  //         $this->view('posts/add', $data);
  //       }
  //     } else {
  //       $data = [
  //         'image_name' => '',
  //         'image_name_err' => 'Please enter valid city'
  //       ];

  //       $this->view('posts/add', $data);
  //     }
  //   } 
  //   else 
  //   {
  //     $data = [
  //       'image_name' => ''
  //     ];

  //     $this->view('posts/add', $data);
  //   }
  // }
}
