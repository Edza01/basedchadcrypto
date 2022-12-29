<?php require APPROOT . '/views/inc/header.php'; ?>




<div class="container container-main-sub-info">

  <?php require APPROOT . '/views/inc/aboutus.php'; ?>

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
                <!-- <span class="card-body-tag-technology"><?php echo $post->tag; ?></span> -->

                <?php 
                  if (isset($post->tag))
                  {
                    echo '<span class="card-body-tag-technology" style="background-color:' . getTagColor($post->tag) .'">'. $post->tag .'</span>';
                  }
                ?>

                <h4 class="card-body-header">
                  <?php echo $post->post_header; ?>
                </h4>
                
                <div class='article-info'>
                  
                  <div class='user-info'>  
                    <?php 
                      $sql_date = new DateTime($post->created_at);
                      $correct_date = $sql_date->format('Y-m-d');
                    ?>
                    
                    <p><?php echo timeDateToTimeAgo($correct_date); ?></p>
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