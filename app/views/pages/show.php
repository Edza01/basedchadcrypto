<?php require APPROOT . '/views/inc/header.php'; ?>



<div class="show-container">
    <!-- <button onclick="myFunction()" class="btn btn-light"><i class="fa fa-backward"></i> Back</button> -->


    <br>
    <h1 class="open-post-h1"><?php echo $data['pages']->image_name; ?></h1>


    <?php $full_size_img = $data['pages']->image_name; ?>
    <img src="<?php echo URLROOT; ?>/public/img/<?php echo $full_size_img ?>" alt='<?php echo $full_size_img ?>' class="open-post-image"> 

    <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
        eiusmod tempor incididunt ut labore et dolore magna aliqua. Malesuada
        pellentesque elit eget gravida. Neque volutpat ac tincidunt vitae
        semper quis. Tempor commodo ullamcorper a lacus vestibulum sed.
        Suscipit tellus mauris a diam maecenas sed enim ut. Euismod in.
    </p>

    
    
</div>


<?php require APPROOT . '/views/inc/footer.php'; ?>