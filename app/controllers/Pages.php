<?php
class Pages extends Controller
{
  public function __construct()
  {
    $this->postModel = $this->model('Post');
  }

  public function index()
  {
        // Get posts if no POST method was used
        $posts = $this->postModel->getPosts();

        $data = [
          'posts' => $posts
        ];


        $this->view('pages/index', $data);   
  }

  public function show($id)
  {
    $post = $this->postModel->getPostById($id);

    $data = [
      'pages' => $post
    ];

    $this->view('pages/show', $data);
  }

  public function about()
  {
    $data = [
      'title' => 'About Us',
      'description' => 'App to share weather cast with other users'
    ];

    $this->view('pages/about', $data);
  }
}
