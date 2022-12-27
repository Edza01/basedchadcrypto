<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">


  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous">
  <link rel="stylesheet" href="<?php echo URLROOT; ?>/public/css/style.css">
  <link rel="stylesheet" href="<?php echo URLROOT; ?>/public/css/posts.css">
  <link rel="stylesheet" href="<?php echo URLROOT; ?>/public/css/openpost.css">
  <link rel="stylesheet" href="<?php echo URLROOT; ?>/public/css/mainpage.css">
  <title><?php echo SITENAME; ?></title>
</head>

<body>
  <?php require APPROOT . '/views/inc/navbar.php'; ?>
  <!-- <div class="container"> -->
  <div>

  <?php
    $current_url = $_SERVER['REQUEST_URI'];
    $page_id = preg_replace('/[^0-9]/', '', $current_url);
    $url = 'pages/show/' . $page_id;

    $_SESSION['currenturl'] = $url;
  ?>