<?php $title = $data['pages']->h3; ?>
<?php $meta = $small = $data['pages']->meta; ?>

<?php require APPROOT . '/views/inc/header.php'; ?>


    <div class="container-fluid pages-main-header-container">
        <h1><?php echo $data['pages']->h3 ?></h1>
        <hr class="page-hr">
        <h2><?php echo $data['pages']->p ?></h2>
    </div>

    <img src='<?php echo URLROOT; ?>/public/postimages/<?php echo $data['pages']->image_name; ?>' alt='<?php echo $data['pages']->h3 ?>' class='open-post-image'> 

    <article class='container learn-pagination'>
        <?php print_r($data['pages']->html); ?>
    </article>




    <!-- RELATED POSTS -->
    <h2 class="masonry-main-header">Related Posts</h2>
    <div class="container learn-outer-container">
        <?php foreach ($data['related_posts'] as $post) : ?>

            <a href="<?php echo URLROOT; ?>/pages/showlearn/<?php echo $post->id; ?>">
            <!-- <a href="<?php echo URLROOT; ?><?php echo $post->url; ?>"> -->
                <div class="learn-container">
                    <div class='learn-card'>
                        <div class='learn-box'>
                            <div class='learn-content'>
                                <i class='fa-solid <?php echo $post->class; ?> fa-2xl'></i>
                                <h3><?php echo $post->h3; ?></h3>
                                <p><?php echo $post->p; ?></p>
                            </div>
                        </div>
                    </div>
                </div>
            </a>

        <?php endforeach; ?>
    </div>
    <!-- RELATED POSTS -->   

<?php require APPROOT . '/views/inc/footer.php'; ?>
