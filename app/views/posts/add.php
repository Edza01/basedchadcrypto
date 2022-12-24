<?php require APPROOT . '/views/inc/header.php'; ?>
  <a href="<?php echo URLROOT; ?>/posts" class="btn btn-light"><i class="fa fa-backward"></i> Back</a>
  <div class="card card-body bg-light mt-5">
    
    <h2>Add weather cast for a city</h2>
   
    <form action="<?php echo URLROOT; ?>/posts/add" method="post">

      <div class="form-group">
        <label for="city_name">City: <sup>*</sup></label>
        <input type="text" name="city_name" class="form-control form-control-lg <?php echo (!empty($data['city_name_err'])) ? 'is-invalid' : ''; ?>" value="<?php echo $data['city_name']; ?>">
        <span class="invalid-feedback"><?php echo $data['city_name_err']; ?></span>
      </div>
     

    


      <input type="submit" class="btn btn-success" value="Submit">
    </form>
  </div>
<?php require APPROOT . '/views/inc/footer.php'; ?>