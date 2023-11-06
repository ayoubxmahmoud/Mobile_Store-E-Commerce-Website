<?php

// require MySQL Connection
require ('database/DBController.php');

// require Product Class
require ('database/Product.php');

// require Cart Class
require ('database/Cart.php');

// require User Class
require ('database/User.php');

// require Blog Class
require ('database/Blog.php');

// DBController object
$db = new DBController();

// Product object
$product = new Product($db);
$product_shuffle = $product->getData();

// Cart object
$Cart = new Cart($db );

// User object
$user = new User($db);

//Blog object
$Blog = new Blog($db);
$blogs = $Blog->getBlogs();
