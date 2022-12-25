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
              } 
              else 
              {
                echo "<li><a href='?page=$counter'>$counter</a></li>";
              }
            }
          } 
          else if ($total_no_of_pages > 5) 
          {
            if ($page <= 4) 
            {
              for ($counter = 0; $counter < 2; $counter++) 
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
          echo "<li><a href='?page=$total_no_of_pages'>Last</a></li>";
        } ?>
      </ul>

    </div>
  </div>