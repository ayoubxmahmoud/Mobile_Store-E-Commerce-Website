<!--   product  -->
<?php
    // GET : superglobal array
    $blog_id = $_GET['blog_id'] ?? 1;

    foreach ($blogs as $blog) :
        if ($blog['blog_id'] == $blog_id) :
?>
<section id="blog" class="py-3">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h5 class="card-title font-size-16"><?php echo $blog['blog_title'] ?? ''; ?></h5>
                <img src="<?php echo $blog['blog_image'] ?? "./assets/blogs/blog1.jpg" ?>" alt="product" class="img-fluid" style="height: 500px;">
            </div>
            <div class="col-12">
                <hr>
                <p><?php echo $blog['blog_content'] ?></p>
            </div>
        </div>
    </div>
</section>
<!--   !product  -->
<?php
        endif;
        endforeach;
?>


