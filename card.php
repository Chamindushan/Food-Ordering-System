
<?php

include 'components/connect.php';

session_start();

if(isset($_SESSION['user_id'])){
   $user_id = $_SESSION['user_id'];
}else{
   $user_id = '';
};

if(isset($_POST['send'])){

   $name = $_POST['name'];
   $name = filter_var($name, FILTER_SANITIZE_STRING);
   $card_number = $_POST['card_number'];
   $card_number = filter_var($card_number, FILTER_SANITIZE_STRING);
   $expiry_date = $_POST['expiry_date'];
   $expiry_date = filter_var($expiry_date, FILTER_SANITIZE_STRING);
   $cvv = $_POST['cvv'];
   $cvv = filter_var($cvv, FILTER_SANITIZE_STRING);



$insert_payments = $conn->prepare("INSERT INTO `payments` (name, card_number, expiry_date, cvv) VALUES (?,?,?,?)");

$insert_payments->execute([$name,$card_number,$expiry_date,$cvv]);
$payments[] = 'payment successfully!';

}

?>


<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title> Credit card process</title>
  <link rel="icon" href="images/favicon.ico">
    <link rel="shortcut icon" href="images/favicon.ico">
</head>
<body>

</body>
</html>
<head>
  <link rel="stylesheet" type="text/css" href="card.css">
</head>

<form action="<form action="https://formspree.io/f/{email1}" method="post">
  <label for="name">Name on Card:</label>
  <input type="text" id="name" name="name" required>

  <label for="name">Email Address:</label>
  <input type="email" id="email1" name="email1" required>
<div class ="label">
  <label for="card_number">Card Number:</label>
  <input type="text" id="card_number" name="card_number" required>

  <label for="expiry_date">Expiry Date:</label>
  <input type="expiry_date" id="expiry_date" name="expiry_date" placeholder="MM/YY" required>

  <label for="cvv">CVV:</label>
  <input type="text" id="cvv" name="cvv" required>

  <input type="submit" value="Pay Now" name="send" onclick="myalert()">

</form>

<p id = "demo"></p>

<script>
function validateForm() {
  var name = document.getElementById("name").value;
  var cardNumber = document.getElementById("card_number").value;
  var expiryDate = document.getElementById("expiry_date").value;
  var cvv = document.getElementById("cvv").value;

  if (name == "") {
    alert("Name on card must be filled out");
    return false;
  }

  if (cardNumber == "") {
    alert("Card number must be filled out");
    return false;
  }

  if (expiryDate == "") {
    alert("Expiry date must be filled out");
    return false;
  }

  if (cvv == "") {
    alert("CVV must be filled out");
    return false;
  }

  return true;
}

  function myalert() {
    var txt;
      if (confirm("press continue")){
        txt = "payment successfully";
      }else{
        txt = "payment cancel";
      }
  document.getElementById("demo").innerHTML = txt;
}


</script>
<script src="https://smtpjs.com/v3/smtp.js"></script>


</html>