<!DOCTYPE html>
<html>
<?php
include_once('defaults/head.php');

?>

<body>

    <div class="cont1 container-fluid">
        <div class="row no-gutters">

        <?php
        include_once('defaults/menu.php');


        ?>
    

        <h1 class='title_contact' id='contact'>categories</h1>
        <div class="row cards">
            <div class="col-3 card">
                <div class="card-body text-center">
                    <a href="/categories/1">
                        <img class="product-img img-responsive center-block" src='/img/categories/overhemt.png' />
                    </a>
                    <div class="card-title mb-3">Overhemt</div>
                </div>
            </div>

            <div class="col-3 card">
                <div class="card-body text-center">
                    <a href="/categories/2">
                        <img class="product-img img-responsive center-block" src='/img/categories/tshirt.jpg' />
                    </a>
                    <div class="card-title mb-3">Tshirt</div>
                </div>

            </div>

            <div class="col-3 card">
                <div class="card-body text-center">
                    <a href="/categories/3">
                        <img class="product-img img-responsive center-block" src='/img/categories/broeken.jpg' />
                    </a>
                    <div class="card-title mb-3">broeken</div>
                    
                </div>

            </div>

            <div class="col-3 card">
                <div class="card-body text-center">
                    <a href="/categories/4">
                        <img class="product-img img-responsive center-block" src='/img/categories/tassen.jpg' />
                    </a>
                    <div class="card-title mb-3">Tassen</div>
                </div>

            </div>

        </div>

        
        
        

        <hr>
        <?php

        
        include_once('defaults/socialm.php');
        include_once('defaults/footer.php');

        

        ?>
        </div>
    </div>



</body>

</html>