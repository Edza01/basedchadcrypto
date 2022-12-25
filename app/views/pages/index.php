<?php require APPROOT . '/views/inc/header.php'; ?>

<div class="index-container">


  <div class="masonry">
    <?php foreach ($data['posts'] as $post) : ?>

      <a href="<?php echo URLROOT; ?>/pages/show/<?php echo $post->id; ?>" class="masonry-item">
        <img src='public/img/<?php echo $post->image_name; ?>' alt='<?php echo $post->image_name; ?>'>
      </a>

    <?php endforeach; ?>
  </div>







  <?php

  if (isset($_GET['page']) && $_GET['page'] != "" && is_numeric($_GET['page'])) {
    $page = $_GET['page'];
  } else {
    $page = 0;
  }

  $total_records_per_page = 30;

  $offset = ($page - 1) * $total_records_per_page;
  $previous_page = $page - 1;
  $next_page = $page + 1;
  $adjacents = "2";


  $total_posts_obj = $this->postModel->getPostCount();
  $total_posts = $total_posts_obj[0]->{'count'};
  $total_no_of_pages = ceil($total_posts / 30) - 1;
  $second_last = $total_no_of_pages - 1; // total pages minus 1

  ?>

  <div class="paginaton-container">
    <div class="pagination-centred">

      <div>
        <strong>Page <?php echo $page . " of " . $total_no_of_pages; ?></strong>
      </div>

      <ul class="pagination">
        <?php if ($page > 0) {
          echo "<li><a href='?page=0'>First Page</a></li>";
        } ?>

        <li <?php if ($page <= 0) {
              echo "class='disabled'";
            } ?>>
          <a <?php if ($page > 0) {
                echo "href='?page=$previous_page'";
              } ?>>Previous</a>
        </li>

        <?php
          if ($total_no_of_pages <= 5) 
          {
            for ($counter = 0; $counter <= $total_no_of_pages; $counter++) 
            {
              if ($counter == $page) 
              {
                echo "<li class='active'><a>$counter</a></li>";
              } else 
              {
                echo "<li><a href='?page=$counter'>$counter</a></li>";
              }
            }
          } 
          else if ($total_no_of_pages > 5) 
          {
            if ($page <= 4) 
            {
              for ($counter = 0; $counter < 8; $counter++) 
              {
                if ($counter == $page) 
                {
                  echo "<li class='active'><a>$counter</a></li>";
                } 
                else 
                {
                  echo "<li><a href='?page=$counter'>$counter</a></li>";
                }
              }
              echo "<li><a>...</a></li>";
              echo "<li><a href='?page=$second_last'>$second_last</a></li>";
              echo "<li><a href='?page=$total_no_of_pages'>$total_no_of_pages</a></li>";
            }
            elseif ($page > 4 && $page < $total_no_of_pages - 4) 
            {
              echo "<li><a href='?page=0'>0</a></li>";
              echo "<li><a href='?page=1'>1</a></li>";
              echo "<li><a>...</a></li>";
              for ($counter = $page - $adjacents; $counter <= $page + $adjacents; $counter++) 
              {
                if ($counter == $page) 
                {
                  echo "<li class='active'><a>$counter</a></li>";
                } 
                else 
                {
                  echo "<li><a href='?page=$counter'>$counter</a></li>";
                }
              }
              echo "<li><a>...</a></li>";
              echo "<li><a href='?page=$second_last'>$second_last</a></li>";
              echo "<li><a href='?page=$total_no_of_pages'>$total_no_of_pages</a></li>";
            } 
            else 
            {
              echo "<li><a href='?page=0'>0</a></li>";
              echo "<li><a href='?page=1'>1</a></li>";
              echo "<li><a>...</a></li>";
              for ($counter = $total_no_of_pages - 6; $counter <= $total_no_of_pages; $counter++) 
              {
                if ($counter == $page) 
                {
                  echo "<li class='active'><a>$counter</a></li>";
                } 
                else 
                {
                  echo "<li><a href='?page=$counter'>$counter</a></li>";
                }
              }
            }
          } 
          
        ?>

        <li <?php if ($page >= $total_no_of_pages) {
              echo "class='disabled'";
            } ?>>
          <a <?php if ($page < $total_no_of_pages) {
                echo "href='?page=$next_page'";
              } ?>>Next</a>
        </li>

        <?php if ($page < $total_no_of_pages) {
          echo "<li><a href='?page=$total_no_of_pages'>Last &rsaquo;&rsaquo;</a></li>";
        } ?>
      </ul>

    </div>
  </div>






  <div class="jumbotron">
    <h1 class="display-4">MyFreeGirlsClub</h1>
    <p class="lead main-text"><b>Welcome to MyFreeGirlClub</b>, a place where you can indulge your love of all things feminine and beautiful.
      Whether you're a fan of fashion, a lover of art, or simply enjoy admiring the female form, this website has something for you.
      With a diverse selection of gorgeous gals from around the world, you'll be able to
      feast your eyes on a wide range of looks, styles, and personalities.
      From stunning fashion models to natural beauties, you'll find a variety of women to admire.
      Each and every one of them is captured in breathtaking images that showcase their unique charms and appeal.
      Whether you're drawn to bold and confident women or prefer a more delicate and demure aesthetic, you'll find something to suit your taste.
      So don't wait any longer - dive into the world of MyFreeGirlClub and discover all the delights it has to offer.
      With its playful and inviting atmosphere, you'll feel like you're in a paradise for those who love gorgeous gals.
      So come on in and enjoy the company of these tantalizing beauties.
    </p>
    <hr class="my-4">
    <p class="main-text">
      MyFreeGirlsClub is a playful paradise for those who love to gaze upon gorgeous gals from around the globe!
      This tantalizing website features a diverse selection of beauties with a wide range of looks, styles,
      and personalities, all captured in stunning images. Whether you're into fashion, beauty, or simply
      adore the female form, this website is sure to have something that will captivate and inspire you. So why wait?
      Head on over to MyFreeGirlClub and get your fix of fun and flirty females today!
    </p>
  </div>

</div>

<?php require APPROOT . '/views/inc/footer.php'; ?>