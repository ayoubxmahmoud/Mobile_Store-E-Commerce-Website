<?php
class Blog
{
    public $db = null;

    public function __construct(DBController $db)
    {
        if (!isset($db->con)) return null;
        $this->db = $db;
    }

    public function getBlogs($table = 'blog'){
        //create a sql query to select all rows from blog table
        $result = $this->db->con->query("SELECT * FROM {$table}");

        $blogsArray = array();

        while($blog = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
            $blogsArray[] = $blog;
        }
        return $blogsArray;
    }

    public function getBlog($id = null, $table = 'blog'){
        if(isset($id)){
            //create a sql query to select a row from blog table where blog_id matches the provided id
            $result = $this->db-con->query("SELECT $ from {$table} blog_id = {$id}");

            $blogArray = array();

            //fetch blog data 
            $blogArray[] = mysqli_fetch_array($result, MYSQLI_ASSOC);

            return $blogArray;

        }
    }
}
?>