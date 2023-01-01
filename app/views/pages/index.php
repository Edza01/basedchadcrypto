<?php require APPROOT . '/views/inc/header.php'; ?>




<div class="container container-main-sub-info">
  
  <h1 class='main-page-h1'>Follow the &#128007</h1>
  


 

  <?php if(!isset($_GET['page']) || $_GET['page'] == 0) : ?>

    <?php require APPROOT . '/views/inc/aboutus.php'; ?>

    <?php else : ?>
    
  <?php endif; ?>




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
              <div class="show-card-header">
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
    <h1 class="display-4">Based Chad Crypto</h1>
    <p class="lead main-text">
      Welcome to our platform, where you can learn about cryptocurrency without censorship or bias. 
      Here, you'll find unbiased and uncensored information about digital currencies. 
      Our goal is to provide a safe and open space for anyone looking to understand more 
      about the exciting world of cryptocurrency. Whether you're a beginner or an experienced trader, 
      we've got the resources and information you need to make informed decisions. 
      So join us and start your journey to becoming a cryptocurrency expert today!
    </p>
    <hr class="my-4">
    <p class="main-text">
      No censorship or bias here.
    </p>
  </div>

</div>

<?php require APPROOT . '/views/inc/footer.php'; ?>