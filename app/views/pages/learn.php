<?php $title = "Exploring the Pros and Cons of Cryptocurrency" ?>
<?php $meta =  "Learn about the benefits and drawbacks of using cryptocurrency. We cover best cryptocurrencies and help you decide if it's right for you."?>

<?php require APPROOT . '/views/inc/header.php'; ?>

<div class="container-fluid pages-main-header-container">
    <h1>Learn Crypto</h1>
    <hr class="page-hr">
    <h2>Exploring the Pros and Cons of Cryptocurrency</h2>
</div>


<div class="container learn-outer-container">
<?php foreach ($data['learn'] as $post) : ?>

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




<?php require APPROOT . '/views/inc/footer.php'; ?>