<?php
shuffle($blogs);
?>
<!-- Blogs -->
<section id="blogs">
    <div class="container py-4">
        <h4 class="font-rubik font-size-20">Latest Blogs</h4>
        <hr>

        <div class="owl-carousel owl-theme">
        <?php foreach($blogs as $blog) {?>
            <div class="item">
                <div class="card border-0 font-rale mr-5" style="width: 18rem;">
                    <h5 class="card-title font-size-16"><?php echo $blog['blog_title'] ?? ''; ?></h5>
                    <a href="<?php printf('%s?blog_id=%s', 'blog.php',  $blog['blog_id']); ?>"><img src="<?php echo $blog['blog_image'] ?? "./assets/blogs/blog2.jpg"; ?>" alt="blog1" style="height: 300px;" class="img-fluid"></a>
                    <p class="card-text font-size-14 text-black-50 py-1"><?php echo $blog['blog_desc'] ?? ''; ?></p>
                    <a href="<?php printf('%s?blog_id=%s', 'blog.php',  $blog['blog_id']); ?>" class="btn btn-primary btn-sms">Read more</a>
                </div>
            </div>
        <?php } ?>
        </div>
    </div>
</section>
<!-- !Blogs -->
