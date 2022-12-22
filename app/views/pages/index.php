<?php require APPROOT . '/views/inc/header.php'; ?>

<div class="index-container">







  <div>
    <?php foreach ($data['posts'] as $post) : ?>

      <a href="<?php echo URLROOT; ?>/pages/show/<?php echo $post->id; ?>" class="post_image_card">
        <img src='public/img/<?php echo $post->city_name; ?>' alt='<?php echo $post->city_name; ?>' class="post_image">
      </a>

    <?php endforeach; ?>
  </div>




</div>

<?php require APPROOT . '/views/inc/footer.php'; ?>