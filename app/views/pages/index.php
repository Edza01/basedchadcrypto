<?php require APPROOT . '/views/inc/header.php'; ?>

<div class="index-container">






  <div class="masonry">
    <?php foreach ($data['posts'] as $post) : ?>

      <a href="<?php echo URLROOT; ?>/pages/show/<?php echo $post->id; ?>" class="masonry-item">
        <img src='public/img/<?php echo $post->city_name; ?>' alt='<?php echo $post->city_name; ?>'>
      </a>

    <?php endforeach; ?>
  </div>




</div>

<?php require APPROOT . '/views/inc/footer.php'; ?>