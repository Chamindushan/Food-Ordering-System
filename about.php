<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>About</title>

    <link rel="icon" href="images/favicon.ico">
    <link rel="shortcut icon" href="images/favicon.ico">


   <link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css" />

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/back.css">
   <link rel="stylesheet" href="css/newbk.css">
   <link rel="stylesheet" href="aaa.css">

</head>
<body>
   
<!-- header section starts  -->
<?php include 'components/user_header.php'; ?>


<div class="heading">
   <h3>About us</h3>
   <p><a href="home.php">Home</a> <span> / About</span></p>
</div>

<!-- about section starts  -->

<section class="about">

   <div class="row">

      <div class="image">
         <img src="images/about-img.svg" alt="">
      </div>

      <div class="content">
         <h3>Why choose us?</h3>
         <p>Shree Food has earned the trust of consumers by providing delicious and healthy food to consumers for many years.  Customers are now ordering different types of food based on their taste.Welcome to this website designed for your convenience.
!</p>
         <a href="menu.php" class="btn">Our menu</a>
      </div>

   </div>

</section>



<section class="steps">

   <h1 class="title">Simple steps</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/step-1.png" alt="">
         <h3>Choose order</h3>
         
      </div>

      <div class="box">
         <img src="images/step-2.png" alt="">
         <h3>Fast Delivery</h3>
         
      </div>

      <div class="box">
         <img src="images/step-3.png" alt="">
         <h3>Enjoy Food</h3>
         
      </div>

   </div>

</section>


<?php include 'components/footer.php'; ?>

<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>


<script src="js/script.js"></script>



</body>
</html>