<?php include("header.php"); ?>
<?php include("./inc/db.php"); ?>


<?php 
        //CHeck whether food id is set or not
        if(isset($_GET['food_id']))
        {
            //Get the Food id and details of the selected food
            $food_id = $_GET['food_id'];

            //Get the DEtails of the SElected Food
            $sql = "SELECT * FROM tbl_food WHERE id=$food_id";
            
            //Execute the Query
            $res = mysqli_query($conn, $sql);
            //Count the rows
            
            $count = mysqli_num_rows($res);
            
            //CHeck whether the data is available or not
            if($count==1)
            {
                //WE Have DAta
                //GEt the Data from Database
                $row = mysqli_fetch_assoc($res);
                $title = $row['title'];
                $price = $row['price'];
                $image_name = $row['image_name'];
            }
            else
            {
                //Food not Availabe
                //REdirect to Home Page
                header('location: http://localhost/orders');
            }
        }
        else
        {
            //Redirect to homepage
            header('location:  http://localhost/orders');
        }
    ?>
<section class="food-search2">
    <div class="container">

        <h2 class="text-center text-white">Fill this form to confirm your order.</h2>

        <form action="order-querys.php" method="POST" class="order">
            <fieldset>
                <legend>Selected Food</legend>

                <div class="food-menu-img">
                    <?php 
                        
                            //CHeck whether the image is available or not
                            if($image_name=="")
                            {
                                //Image not Availabe
                                echo "<div class='error'>Image not Available.</div>";
                            }
                            else
                            {
                                //Image is Available
                                ?>
                    <img src=" http://localhost/orders/images/food/<?php echo $image_name; ?>"
                        alt="Chicke Hawain Pizza" class="img-responsive img-curve">
                    <?php
                            }
                        
                        ?>

                </div>

                <div class="food-menu-desc">
                    <h3><?php echo $title; ?></h3>
                    <input type="hidden" name="food" value="<?php echo $title; ?>">

                    <p class="food-price">$<?php echo $price; ?></p>
                    <input type="hidden" name="price" value="<?php echo $price; ?>">

                    <div class="order-label">Quantity</div>
                    <input type="number" name="qty" class="input-responsive" value="1" required>

                </div>

            </fieldset>

            <fieldset>
                <legend>Delivery Details</legend>
                <div class="order-label">Full Name</div>
                <input type="text" name="full-name" placeholder="E.g. Ahmad Azimeh" class="input-responsive" required>

                <div class="order-label">Phone Number</div>
                <input type="tel" name="contact" placeholder="E.g. 7410000000" class="input-responsive" required>

                <div class="order-label">Email</div>
                <input type="email" name="email" placeholder="E.g. william@codeastro.com" class="input-responsive"
                    required>

                <div class="order-label">Address</div>
                <textarea name="address" rows="10" placeholder="E.g. Street, City, Country" class="input-responsive"
                    required></textarea>

                <input type="submit" name="submit" value="Confirm Order" class="btn btn-primary">
            </fieldset>

        </form>


<!-- fOOD sEARCH Section Ends Here -->




<?php  include("footer.php"); ?>