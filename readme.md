Launch with xampp

Edit there : 

    app/config/config.php, 
    public/.htaccess (RewriteBase)
    app/models/Post.php (addWeatherCast) - add your own api code by registering there
        https://openweathermap.org/current


# To imput weather data use provided login information:
#    email: admin@admin.com
#    password: admin123



  <?php
    $total_posts_obj = $this->postModel->getPostCount();
    $total_posts = $total_posts_obj[0]->{'count'};
    $total_pages = ceil($total_posts / 24);

    $posts_per_page = 7;
    
    $current_page = $_GET['page'];
    $prev_page = $current_page - 1;
    $next_page = $current_page + 1;

    if ($prev_page == 0 || $prev_page < 0)
    {
      $prev_page = 0;
    }

    if ($next_page == $total_pages || $next_page > $total_pages)
    {
      $next_page = $total_pages;
    }
      
  echo $_GET['page'];
    
  ?>

  <div class="pagination-container">

    <!-- <a class="first-page" href="#"> <i class="fa-solid fa-backward fa-xl"></i> </a> -->
    
    <ul class="pagination">
   
      <li><a href="?page=<?php echo $prev_page ?>" class="prev">Prev</a></li>
      <?php
        for ($i = 0; $i < $total_pages; $i++) {
          echo "<li><a class='page-index' href='?page=" . $i . "'>" . $i . "</a></li>";
          // if ($i == $posts_per_page)
          // {
          //   break;
          // }
        }
      ?>
      <li><a href="?page=<?php echo $prev_page ?>" class="next">Next</a></li>
    
    </ul>

    <!-- <a class="last-page" href="#"> <i class="fa-solid fa-forward fa-xl	"></i> </a> -->

  </div>