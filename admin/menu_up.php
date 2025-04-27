<?php

include '../components/connect.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:admin_login.php');
};

if(isset($_POST['add_product'])){

   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $price = $_POST['price'];
   $price = filter_var($price, FILTER_SANITIZE_STRING);
   $category = $_POST['category'];
   $category = filter_var($category, FILTER_SANITIZE_STRING);

   $image = $_FILES['image']['name'];
   $image = filter_var($image, FILTER_SANITIZE_STRING);
   $image_size = $_FILES['image']['size'];
   $image_tmp_name = $_FILES['image']['tmp_name'];
   $image_folder = '../uploaded_img/'.$image;

   $select_products = $conn->prepare("SELECT * FROM `products` WHERE name = ?");
   $select_products->execute([$name]);

   if($select_products->rowCount() > 0){
      $message[] = 'product name already exists!';
   }else{
      if($image_size > 2000000){
         $message[] = 'image size is too large';
      }else{
         move_uploaded_file($image_tmp_name, $image_folder);

         $insert_product = $conn->prepare("INSERT INTO `products`(name, category, price, image) VALUES(?,?,?,?)");
         $insert_product->execute([$name, $category, $price, $image]);

         $message[] = 'new product added!';
      }

   }

}

if(isset($_GET['delete'])){

   $delete_id = $_GET['delete'];
   $delete_product_image = $conn->prepare("SELECT * FROM `products` WHERE id = ?");
   $delete_product_image->execute([$delete_id]);
   $fetch_delete_image = $delete_product_image->fetch(PDO::FETCH_ASSOC);
   unlink('../uploaded_img/'.$fetch_delete_image['image']);
   $delete_product = $conn->prepare("DELETE FROM `products` WHERE id = ?");
   $delete_product->execute([$delete_id]);
   $delete_cart = $conn->prepare("DELETE FROM `cart` WHERE pid = ?");
   $delete_cart->execute([$delete_id]);
   header('location:products.php');

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Update Menu</title>

  
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

   
   <link rel="stylesheet" href="../css/admin_style.css">
   <link rel="stylesheet" href="css/menu.css">
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="../css/das.css">
   <link rel="stylesheet" href="../css/da1.css">
</head>
<body>

<?php include '../components/admin_header.php' ?>


   


<div class="heading">
   <h3>Add and Update Menu</h3>
   <p><a href="dashboard.php">Dashboard</a> <span> / Menu</span></p>
</div> <br>



<center><a href="pizza.php" class="btn"> Pizza</a></center> <br>
<center><a href="rice.php" class="btn"> Fried Rice</a></center> <br>
<center><a href="biriyani.php" class="btn">Biriyani</a></center> <br>
<center><a href="noodls.php" class="btn">Noodles </a></center> <br>
<center><a href="hot.php" class="btn">Hot Favorites</a></center> <br>
<center><a href="desat.php" class="btn">Desserts</a></center> <br>
<center><a href="salada.php" class="btn">Salad </a></center> <br>
<center><a href="sup.php" class="btn">Soup </a></center> <br>




<script src="js/script.js"></script>
   </div>

</section>


<script src="../js/admin_script.js"></script>

</body>
</html>