<?php require APPROOT . '/views/inc/header.php'; ?>

<?php flash('post_message'); ?>


<div class='show-container'>
    <!-- <button onclick="myFunction()" class="btn btn-light"><i class="fa fa-backward"></i> Back</button> -->


    <br>
    <h1 class='open-post-h1'><?php echo $data['pages']->image_name; ?></h1>

    <?php print_r($data['pages']->id); ?>

    <?php $full_size_img = $data['pages']->image_name; ?>
    <img src='<?php echo URLROOT; ?>/public/img/<?php echo $full_size_img ?>' alt='<?php echo $full_size_img ?>' class='open-post-image'> 

    <hr/>

    

    <?php foreach ($data['comments'] as $post) : ?>

        <?php print_r($post); ?>



    <?php endforeach; ?>

    <!-- <?php print_r($post->date); ?>
    <?php print_r($post->message); ?>
    <?php print_r($post->date); ?> -->
    
</div>










<?php require APPROOT . '/views/inc/footer.php'; ?>



  