<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

include 'components/add_cart.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Menu</title>
    <link rel="icon" href="images/favicon.ico">
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="css/back.css">
    <link rel="stylesheet" href="css/newbk.css">

</head>
<body>
   <?php include 'components/user_header.php'; ?>


<div class="heading">
   <h3>our menu</h3>
   <p><a href="home.php">Home</a> <span> / Menu</span></p>
</div> <br>




<center><a href="rice.php" class="btn"> Fried Rice</a></center> <br>
<center><a href="biriyani.php" class="btn">Biriyani</a></center> <br>
<center><a href="noodls.php" class="btn">Noodles </a></center> <br>
<center><a href="hot.php" class="btn">Hot Favorites</a></center> <br>
<center><a href="desat.php" class="btn">Desserts</a></center> <br>
<center><a href="salada.php" class="btn">Salad </a></center> <br>
<center><a href="sup.php" class="btn">Soup </a></center> <br>


<?php include 'components/footer.php'; ?>

<script src="js/script.js"></script>

</body>
</html>