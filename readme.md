Launch with xampp

Edit there : 

    app/config/config.php, 
    public/.htaccess (RewriteBase)
    app/models/Post.php (addWeatherCast) - add your own api code by registering there
        https://openweathermap.org/current


# To imput weather data use provided login information:
#    email: admin@admin.com
#    password: admin123



  <div id="jar" style="display:none" class="masonry">
    <?php foreach ($data['posts'] as $post) : ?>

      <!-- <a href="<?php echo URLROOT; ?>/pages/show/<?php echo $post->id; ?>" class="masonry-item content">
        <img src='public/img/<?php echo $post->city_name; ?>' alt='<?php echo $post->city_name; ?>'>
      </a> -->

      <a class="masonry-item content">
        <img onclick="onClick(this)" class="modal-hover-opacity" src='public/img/<?php echo $post->city_name; ?>' alt='<?php echo $post->city_name; ?>'>
      </a>


      <div id="modal01" class="modal" onclick="this.style.display='none'">
        <span class="close">&times;&nbsp;&nbsp;&nbsp;&nbsp;</span>
        <div class="modal-content">
          <img id="img01" style="max-width:100%">
          <p>text</p>
        </div>
      </div>

    <?php endforeach; ?>
  </div>


  <div class="pagination">
  </div>