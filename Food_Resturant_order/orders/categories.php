<?php include("header.php"); ?>
<?php include("./inc/db.php"); ?>



     <!-- CAtegories Section Starts Here -->
     <section class="categories">
        <div class="container">
            <h2 class="text-center">Explore Various Food Categories</h2>
            <?php 
                //Create SQL Query to Display CAtegories from Database
                $sql = "SELECT * FROM tbl_category WHERE active='Yes' AND featured='Yes' ORDER BY id DESC LIMIT 8";
                
                //Execute the Query
                $res = mysqli_query($conn, $sql);

                //function returns the number of rows in a result set. to check whether the category is available or not
                $count = mysqli_num_rows($res); //5

                //CAtegories Available
                if($count>0)
                {
                    // function is used to return an associative array representing.  
                    while($row=mysqli_fetch_assoc($res))
                    {
                        //Get the Values like id, title, image_name
                        $id = $row['id']; //4
                        $title = $row['title']; //pizza
                        $image_name = $row['image_name']; //pizza image
                        ?>
                        
                        <a href="http://localhost/orders/category-foods.php?category_id=<?php echo $id; ?>">
                            <div class="box-3 float-container">
                                <?php 
                                    //Check whether Image is available or not
                                    if($image_name==""){
                                        //Display MEssage
                                        echo "<div class='error'>Image not Available</div>";
                                    }
                                    else{
                                        //Image Available
                                        ?>
                                        <img src="http://localhost/orders/images/category/<?php echo $image_name; ?>" alt="Pizza" class="img-responsive img-curve">
                                        <?php
                                    }
                                ?>
                                <h3 class="fod" ><?php echo $title; ?></h3>
                            </div>
                        </a>
                        <?php
                    }
                }
                else
                {
                    //Categories not Available
                    echo "<div class='error'>Category not Added.</div>";
                }
            ?>
            <div class="clearfix"></div>
        </div>
    </section>
    <!-- Categories Section Ends Here -->



            
            
            

<?php  include("footer.php"); ?>