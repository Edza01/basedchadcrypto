<?php require APPROOT . '/views/inc/header.php'; ?>

<?php flash('post_message'); ?>


<div class='show-container'>
    <!-- <button onclick="myFunction()" class="btn btn-light"><i class="fa fa-backward"></i> Back</button> -->


    <br>
    <h1 class='open-post-h1'><?php echo $data['pages']->image_name; ?></h1>



    <!-- <?php print_r($data['pages']->id); ?> -->


    
    <?php $full_size_img = $data['pages']->image_name; ?>
    <img src='<?php echo URLROOT; ?>/public/img/<?php echo $full_size_img ?>' alt='<?php echo $full_size_img ?>' class='open-post-image'> 

    <hr />

    <form action="<?php echo URLROOT; ?>/pages/add" method="post">

      <div class="form-group">
        <label for="city_name">City: <sup>*</sup></label>
        <textarea type="text" name="city_name" class="open-post-textarea form-control form-control-lg <?php echo (!empty($data['city_name_err'])) ? 'is-invalid' : ''; ?>" value="<?php echo $data['city_name']; ?>"></textarea>
        <span class="invalid-feedback"><?php echo $data['city_name_err']; ?></span>
      </div>
     
      <input type="submit" class="open-post-button" value="Submit">
    </form>



    <div class="card-container justify-content-center">
        <?php foreach ($data['comments'] as $post) : ?>
            <div class="card card-body mb-3 posts-container">

                <h4 class="card-title"><?php echo $post->city_name; ?> <?php echo $country; ?></h4>

            </div>

        <?php endforeach; ?>
    </div>

</div>










<?php require APPROOT . '/views/inc/footer.php'; ?>