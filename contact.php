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
   <title>Contact</title>

<link rel="icon" href="images/favicon.ico">
    <link rel="shortcut icon" href="images/favicon.ico">
   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/back.css">
   <link rel="stylesheet" href="css/newbk.css">
   <link rel="stylesheet" href="aaa.css">

</head>
<body>
   

<?php include 'components/user_header.php'; ?>


<div class="heading">
   <h3>Contact Us</h3>
   <p><a href="home.php">Home</a> <span> / contact</span></p>
</div>



<section class="contact">

   <div class="row">

      <div class="image">
         <img src="images/contact-img.svg" alt="">
      </div>

      <form action="https://formspree.io/f/xdovvjgq" method="post" class="from-contact">

         <h3>Tell Us Something!</h3>

          <input type="text" name="name" maxlength="50" class="box" placeholder="enter your name" required>
          <input type="number" name="number" min="0" max="9999999999" class="box" placeholder="enter your phone number" required maxlength="10">
          <input type="email" name="email" maxlength="50" class="box" placeholder="enter your email" required>
          <textarea name="msg" class="box" required placeholder="enter your message" maxlength="500" cols="30" rows="10"></textarea>
          <input type="submit" value="send message" name="send" class="btn">

      </form>

   </div>

</section>


<?php include 'components/footer.php'; ?>

<script src="https://smtpjs.com/v3/smtp.js"></script>



<script src="js/script.js"></script>

</body>
</html>