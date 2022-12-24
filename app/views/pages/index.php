<?php require APPROOT . '/views/inc/header.php'; ?>

<div class="index-container">

  <div id="jar" style="display:none" class="masonry">
    <?php foreach ($data['posts'] as $post) : ?>

      <a href="<?php echo URLROOT; ?>/pages/show/<?php echo $post->id; ?>" class="masonry-item content">
        <img src='public/img/<?php echo $post->city_name; ?>' alt='<?php echo $post->city_name; ?>'>
      </a>

    <?php endforeach; ?>
  </div>

  <div class="pagination">
  </div>

  <div class="jumbotron">
    <h1 class="display-4">MyFreeGirlsClub</h1>
    <p class="lead main-text"><b>Welcome to MyFreeGirlClub</b>, a place where you can indulge your love of all things feminine and beautiful.
      Whether you're a fan of fashion, a lover of art, or simply enjoy admiring the female form, this website has something for you.
      With a diverse selection of gorgeous gals from around the world, you'll be able to
      feast your eyes on a wide range of looks, styles, and personalities.
      From stunning fashion models to natural beauties, you'll find a variety of women to admire.
      Each and every one of them is captured in breathtaking images that showcase their unique charms and appeal.
      Whether you're drawn to bold and confident women or prefer a more delicate and demure aesthetic, you'll find something to suit your taste.
      So don't wait any longer – dive into the world of MyFreeGirlClub and discover all the delights it has to offer.
      With its playful and inviting atmosphere, you'll feel like you're in a paradise for those who love gorgeous gals.
      So come on in and enjoy the company of these tantalizing beauties.
    </p>
    <hr class="my-4">
    <p class="main-text">
      MyFreeGirlsClub is a playful paradise for those who love to gaze upon gorgeous gals from around the globe!
      This tantalizing website features a diverse selection of beauties with a wide range of looks, styles,
      and personalities, all captured in stunning images. Whether you're into fashion, beauty, or simply
      adore the female form, this website is sure to have something that will captivate and inspire you. So why wait?
      Head on over to MyFreeGirlClub and get your fix of fun and flirty females today!
    </p>
  </div>

</div>

<?php require APPROOT . '/views/inc/footer.php'; ?>