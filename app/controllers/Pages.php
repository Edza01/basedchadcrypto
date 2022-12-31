<?php
class Pages extends Controller
{
  public function __construct()
  {
    $this->postModel = $this->model('Post');
  }

  public function index()
  {
    if (isset($_GET['page']) && is_numeric($_GET['page']))
    {
        $page = $_GET['page'];
        
          $posts = $this->postModel->getPosts($page * 8);

          $data = [
            'posts' => $posts
          ];
       
        $this->view('pages/index', $data);
    }
    else
    {
        // Get posts if no POST method was used
        $posts = $this->postModel->getPosts();

        $data = [
          'posts' => $posts
        ];

        $this->view('pages/index', $data);
    }    
  }

  public function show($id)
  {
    $post = $this->postModel->getPostById($id);
    $comments = $this->postModel->getCommentsFromPostWhere_page_id($id);

    $data = [
      'pages' => $post,
      'comments' => $comments
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

  public function tldr()
  {
    $data = [
      'title' => 'tldr'
    ];

    $this->view('pages/tldr', $data);
  }

  public function learn()
  {
    $data = [
      'title' => 'learn'
    ];

    $this->view('pages/learn', $data);
  }

  public function cryptowallets()
  {
    $data = [
      'title' => 'crypto wallets'
    ];

    $this->view('pages/cryptowallets', $data);
  }

  public function whoacceptscrypto()
  {
    $data = [
      'title' => 'crypto wallets'
    ];

    $this->view('pages/whoacceptscrypto', $data);
  }

  public function bestprivacycoin()
  {
    $data = [
      'title' => 'crypto wallets'
    ];

    $this->view('pages/bestprivacycoin', $data);
  }
  
  public function cryptoscams()
  {
    $data = [
      'title' => 'crypto scams'
    ];

    $this->view('pages/cryptoscams', $data);
  }
    
  public function blockchain()
  {
    $data = [
      'title' => 'blockchain'
    ];

    $this->view('pages/blockchain', $data);
  }

  public function blockhainvsbanks()
  {
    $data = [
      'title' => 'blockhainvsbankss'
    ];

    $this->view('pages/blockhainvsbanks', $data);
  }

  public function whatisnft()
  {
    $data = [
      'title' => 'whatisnft'
    ];

    $this->view('pages/whatisnft', $data);
  }

  public function cryptojacking()
  {
    $data = [
      'title' => 'cryptojacking'
    ];

    $this->view('pages/cryptojacking', $data);
  }

  public function nextcryptocurrencytoexplode()
  {
    $data = [
      'title' => 'cryptojacking'
    ];

    $this->view('pages/whatisethereum', $data);
  }
  
  
  



  public function add()
  {
    if ($_SERVER['REQUEST_METHOD'] == 'POST') 
    {
      // Sanitize POST array
      $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_FULL_SPECIAL_CHARS);

      // Check if api return no error
      

        $data = [
          'post_comment' => ucfirst(trim($_POST['post_comment'])),
          'username' => $_SESSION['username'],
          'page_id' => $_POST['page_id']
        ];

        // Make sure no errors
        if (!empty($_POST['post_comment']) && isset($_SESSION['user_id'])) {
          // Validated
          if ($this->postModel->addComment($data)) {
            flash('post_message', 'Post Added');

            redirect($_SESSION['currenturl']);
          } else {
            die('Something went wrong');
          }
        } 
        else
        {
          redirect($_SESSION['currenturl']);
        }
      
    } 
    
  }


  
  
}

