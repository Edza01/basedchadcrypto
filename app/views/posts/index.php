<?php require APPROOT . '/views/inc/header.php'; ?>
<?php flash('post_message'); ?>
<div class="row mb-3">
  <div class="col-md-6">
    <h1>Weather</h1>
  </div>

  <?php if (isset($_SESSION['user_id']) && (isset($_SESSION['user_email']) && $_SESSION['user_email'] == 'admin@admin.com')) : ?>
    <div class="col-md-6">
      <a href="<?php echo URLROOT; ?>/posts/add" class="btn btn-primary pull-right">
        <i class="fa fa-pencil"></i> Add City
      </a>
    </div>
  <?php else : ?>

  <?php endif; ?>

</div>

<form action="" method="post">
  <div class="order-container">
    <div class="row">
      <h3>Order Cities By: </h3>

      <select name="ordercities" onchange="this.form.submit();" class="custom-select">
        <option>select</option>
        <option value="descending">descending</option>
        <option value="ascending">ascending</option>
      </select>

    </div>
  </div>
</form>


<div class="card-container justify-content-center">
  <?php foreach ($data['posts'] as $post) : ?>
    <div class="card card-body mb-3 posts-container">

      <h4 class="card-title"><?php echo $post->city_name; ?>, <?php echo $country; ?></h4>

    </div>

    <a href="<?php echo URLROOT; ?>/posts/show/<?php echo $post->id; ?>" class="btn btn-dark">More</a>

</div>
<?php endforeach; ?>
</div>



<?php require APPROOT . '/views/inc/footer.php'; ?>