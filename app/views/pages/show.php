<?php require APPROOT . '/views/inc/header.php'; ?>

<?php flash('post_message'); ?>


<div class='container'>
  <!-- <button onclick="myFunction()" class="btn btn-light"><i class="fa fa-backward"></i> Back</button> -->


  <br>
  <!-- <h1 class='open-post-h1'><?php echo $data['pages']->image_name; ?></h1> -->

  <?php $full_size_img = $data['pages']->image_name; ?>
  <img src='<?php echo URLROOT; ?>/public/img/<?php echo $full_size_img ?>' alt='<?php echo $full_size_img ?>' class='open-post-image'> 

  <hr />



  <!-- <?php echo $data['pages']->id; ?> -->
  
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
    $real = realpath(APPROOT.'/postcontent/'.$data['pages']->id.'.php' . $wanted);
    if (strpos($real, APPROOT.'/postcontent/1.php') === 0) {
      echo '<div class="show-page-text">';
      echo file_get_contents($real);
      echo '</div>';
    } else {
      echo' not allowed to access this file';
    }


  ?>


  <?php if (isset($_SESSION['user_id'])) : ?>

    <form action="<?php echo URLROOT; ?>/pages/add" method="post">

    <input type="hidden" name="page_id" value="<?php echo $data['pages']->id; ?>" />

      <div class="form-group">
        <label for="post_comment">Comment: <sup>*</sup></label>
        <textarea type="text" name="post_comment" class="open-post-textarea form-control form-control-lg <?php echo (!empty($data['post_comment_err'])) ? 'is-invalid' : ''; ?>" value="<?php echo $data['post_comment']; ?>"></textarea>
        <span class="invalid-feedback"><?php echo $data['post_comment_err']; ?></span>
      </div>

      <div class="open-post-button-container">
        <input type="submit" class="open-post-button" value="Submit">
      </div>
      
    </form>

  <?php else : ?>


    <div class="jumbotron">
      <h1 class="display-5">You must login to comment!</h1>
      <p class="lead">Hey there! Want to join in on the conversation? Just log in and let your voice be heard! 
        Trust us, it's worth it. Plus, it'll give you the chance to share your witty remarks and thoughtful 
        insights with the rest of the internet. Go ahead, give it a try! You might just become the star commenter of the day.</p>
      <hr class="my-4">
      <p>Hey there! Don't have an account yet? No problem!</p>
      <p class="lead">
        <a class="regiser-inside-post-button" href="<?php echo URLROOT; ?>/users/register">Register</a>
      </p>
    </div>

  <?php endif; ?>


  <div class="card-container justify-content-center">

    <?php foreach ($data['comments'] as $post) : ?>
      <div class="card card-body mb-3 posts-container">

        <?php
          $dt = new DateTime($post->date);
          $year_month_day = $dt->format('Y-m-d');
        ?>

        <div class="inline-comment-data">
          <h4 class="card-title"><?php echo $post->username; ?> </h4>
          <p class='card-date'><?php echo $year_month_day; ?></p>
        </div>

        <p><?php echo $post->post_comment; ?></p>

      </div>

    <?php endforeach; ?>
  </div>
















  

</div>










<?php require APPROOT . '/views/inc/footer.php'; ?>