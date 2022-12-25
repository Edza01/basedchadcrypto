<?php
class Posts extends Controller
{
  // public function __construct()
  // {
  //   $this->postModel = $this->model('Post');
  // }

  // public function index()
  // {
  //     // Get posts if no POST method was used
  //     $posts = $this->postModel->getPostsComments();

  //     $data = [
  //       'posts' => $posts
  //     ];
    
  //   $this->view('posts/index', $data);
  // }

  // public function add()
  // {
  //   if ($_SERVER['REQUEST_METHOD'] == 'POST') 
  //   {
  //     // Sanitize POST array
  //     $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_FULL_SPECIAL_CHARS);

  //     // Check if api return no error
      

  //       $data = [
  //         'city_name' => ucfirst(trim($_POST['city_name'])),
  //         'user_id' => $_SESSION['user_id']
  //       ];

  //       // Make sure no errors
  //       if (!empty($_POST['city_name'])) {
  //         // Validated
  //         if ($this->postModel->addComment($data)) {
  //           flash('post_message', 'Post Added');

  //           redirect($_SESSION['currenturl']);
  //         } else {
  //           die('Something went wrong');
  //         }
  //       } 
  //       else
  //       {
  //         redirect($_SESSION['currenturl']);
  //       }
      
  //   } 
    
  // }

  
}
