
<?php 

include("./inc/db.php");

//CHeck whether submit button is clicked or not
if($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['submit']))
{

// Get all the details from the form

    $food = $_POST['food'];
    $price = $_POST['price'];
    $qty = $_POST['qty'];
    $total = $price * $qty;
    $order_date = date("Y-m-d h:i"); 
    $status = "Ordered";  
    $customer_name = $_POST['full-name'];
    $customer_contact = $_POST['contact'];
    $customer_email = $_POST['email'];
    $customer_address = $_POST['address'];



   








    //Save the Order in Databaase
    //Create SQL to save the data
    
    $sql2 = "INSERT INTO tbl_order (food, price, qty, total, order_date, status, customer_name, customer_contact, customer_email, customer_address) VALUES ('$food', '$price','$qty','$total','$order_date', '$status', '$customer_name','$customer_contact','$customer_email','$customer_address')";
    
    //Execute the Query
    $res2 = mysqli_query($conn, $sql2);

    if($res2==true){
    
        //Query Executed and Order Saved 
        
        $_SESSION['order'] = "<div class='success text-center'>Food Ordered Successfully & Thanks for your order $customer_name 
                                                                Your Total Price : $total$ 
        .</div>";
        header('location:  http://localhost/orders');
    
    
    }
    else
    {
    //Failed to Save Order
    $_SESSION['order'] = "<div class='error text-center'>Failed to Order Food.</div>";
    header('location:  http://localhost/orders');
    }








        // echo "<div class='success text-center'>Thanks for your order $customer_name . </dev>". "<br>";

        // echo "<div class='order text-center'>";
        // echo "<h3>Your order details:</h3> ". "<br>";
        
        // echo "<hr>";
        // echo "The Food Name: $food". "<br>";
        // echo "The Price is: $price $". "<br>";
        // echo "The qty: $qty". "<br>";

        // echo "The total price is $total $". "<br>";
        // echo "The order data at: $order_date". "<br>";
        // echo "The Status is: $status". "<br>";
        // echo "We will delerviry the order at this speicifc address:  $customer_address". "<br>";
        // echo "</div>";



}

?>

</div>
</

>

