<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile Store</title>

    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- Owl-carousel CDN -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha256-UhQQ4fxEeABh4JrcmAJ1+16id/1dnlOEVCFOxDef9Lw=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha256-kksNxjDRxd/5+jGurZUJd1sdR2v+ClrCl3svESBaJqw=" crossorigin="anonymous" />

    <!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" integrity="sha256-h20CPZ0QyXlBuAw7A+KluUYx/3pK+c7lYEpqLTlxjYQ=" crossorigin="anonymous" />

    <!-- Custom CSS file -->
    <link rel="stylesheet" href="style.css">

    <link rel="icon" href="./assets/icons/store.png" type="image/x-icon">

    <?php
    session_start();
    // require functions.php file
    require ('functions.php');
    if(isset($_SESSION['userID'])){
        $userInfo = $user->get_user_info($_SESSION['userID']);
    }

    ?>

</head>
<body>

<!-- start #header -->
<header id="header">


    <!-- Primary Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark color-second-bg">
        <a class="navbar-brand" href="index.php">Galaxy Store</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav m-auto font-rubik">
                <li class="nav-item active">
                    <a class="nav-link" href="#top-sale">Recommended</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#new-phones">New Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#blogs">Blogs</a>
                </li>
            </ul>
            <div class="strip d-flex justify-content-between py-1">
                <div class="font-rale font-size-14">
                    <!-- Content for the left side -->
                </div>
                <div class="dropdown d-flex justify-content-end">
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a href="./Authentification/profile.php" class="dropdown-item px-3 border-right border-left text-dark text-decoration-none">Profile</a>
                        <?php if (isset($_SESSION['userID'])){ ?>
                            <a href="./Authentification/logout.php" class="dropdown-item px-3 border-right border-left text-dark text-decoration-none">Logout</a>
                        <?php }else{?>
                            <a href="./Authentification/login.php" class="dropdown-item px-3 border-right border-left text-dark text-decoration-none">Login</a>
                        <?php } ?>

                        <a href="cart.php" class="dropdown-item px-3 border-right text-dark text-decoration-none">Wishlist (<?php echo count($product->getData('wishlist')); ?>)</a>
                    </div>
                    <img class="dropdown-toggle rounded-circle mr-4" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" src="./Authentification/<?php echo isset($userInfo[0]['profileImage']) ? $userInfo[0]['profileImage'] : 'assets/profile/beard.png' ; ?>" alt="user image">
                </div>
            </div>
            <form action="#" class="font-size-14 font-rale">
                <a href="cart.php" class="py-2 rounded-pill color-primary-bg">
                    <span class="font-size-16 px-2 text-white"><i class="fas fa-shopping-cart"></i></span>
                    <span class="px-3 py-2 rounded-pill text-dark bg-light"><?php echo count($product->getData('cart')); ?></span>
                </a>
            </form>
        </div>
        
    </nav>
    <!-- !Primary Navigation -->

</header>
<!-- !start #header -->

<!-- start #main-site -->
<main id="main-site">