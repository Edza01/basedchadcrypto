<?php require APPROOT . '/views/inc/header.php'; ?>


<div class="container-fluid">
<?php
  // echo uniqid('prefix');
  echo $_SESSION['user_id'];
 
?>
</div>

<div class="container">

  <div class="posts-wrapper">

    <div class='posts-wrapper-inner'>
      <h2 class="masonry-main-header">Learn</h2>
      <div class="categories-container">
        <?php require APPROOT . '/views/inc/categories.php'; ?>
      </div>
    </div>


    <div class='posts-wrapper-inner'>
      <h2 class="masonry-main-header">Articles</h2>
      <div class="masonry">

        <?php foreach ($data['posts'] as $post) : ?>

          <a class='article-link' href="<?php echo URLROOT; ?>/pages/show/<?php echo $post->id; ?>">
            <div class="card">
              <div class="card-header">
                <img class='masonry-card-image' src='public/img/<?php echo $post->image_name; ?>' alt='<?php echo $post->image_name; ?>'>
              </div>
              <div class="card-body">
                <span class="card-body-tag-technology">Technology</span>
                <h4>
                  <?php echo $post->post_header; ?>
                </h4>
                <p>
                  An exploration into the truck's polarising design
                </p>
                <div class='article-info'>
                  
                  <div class='like-container'>
                    <p><?php echo 121; ?></p>
                    <i class='fa-solid fa-heart fa-2xl'></i>
                  </div>

                  <div class='user-info'>
                    
                    <?php 
                      $sql_date = new DateTime($post->created_at);
                      $correct_date = $sql_date->format('Y-m-d');
                    ?>
                    
                    <p><?php echo $correct_date; ?></p>
          
                  </div>
                </div>
              </div>
            </div>
            
          </a>

        <?php endforeach; ?>

      </div>
    </div>

  </div>


  <?php require APPROOT . '/views/inc/pagination.php'; ?>





  <?php
    // file_get_contents() may be dangerous if you use user supplied data as a parameter and print its output. 
    // A malicious user may then use e.g. /etc/passwd to read all your server's user names. Or, he/she could use '..' 
    // as part of the file name to access files even if you prepend the name with an allowed path (e.g. "../../etc/passwd")
    // To prevent that from happening, you should always check user given values for validity, for example, 
    // that a file name or path is in an expected part of your file system, and so accessing only files that you want 
    // the user to access. PHP has a function to make relative paths (or paths that contains symbolic links) 'real': realpath().
    // After making a path 'real' you can check the path if it is in the 
    // expected part of the file system and then safely use it for file_get_contents().

    $wanted = $_GET['path'];
    $real = realpath(APPROOT.'/postcontent/1.php' . $wanted);
    if (strpos($real, APPROOT.'/postcontent/1.php') === 0) {
      echo file_get_contents($real);
    } else {
      echo' not allowed to access this file';
    }


  ?>



  <div class="jumbotron">
    <h1 class="display-4">Informative crypto blog</h1>
    <p class="lead main-text">Welcome to our informative crypto blog! Here you will find a wealth of 
      information and resources on all things cryptocurrency. Whether you are new 
      to the world of crypto or an experienced investor, we have something for you.
      On our blog, you will find articles and guides on topics such as how to buy and sell 
      cryptocurrencies, how to securely store your digital assets, and the latest news and developments 
      in the world of crypto. We also offer in-depth reviews of different cryptocurrency exchanges and wallets, 
      as well as analysis and commentary on the market and its trends.
      In addition to our written content, we also offer a range of interactive resources, 
      such as calculators, to help you learn more about crypto and make informed decisions about your investments.
      So if you are looking for a one-stop-shop for all your crypto needs, look no further! Join our community 
      and stay up to date with the latest in the world of cryptocurrency.
    </p>
    <hr class="my-4">
    <p class="main-text">
      Learn about cryptocurrency with our educational blog. Stay up to date with the latest news 
      and trends and use our interactive resources to make informed investment decisions.
    </p>
  </div>

</div>

<?php require APPROOT . '/views/inc/footer.php'; ?>