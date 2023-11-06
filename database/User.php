<?php

class User{
    public $db = null;

    public function __construct(DBController $db)
    {
        if(!isset($db)) return null;
        $this->db = $db;
    }

    public function createUser($params = null, $table = "user") {
        if ($this->db->con != null) {
            if ($params != null) {
                // Create placeholders for values
                $placeholders = implode(', ', array_fill(0, count($params), '?'));
    
                // Prepare the SQL query with placeholders
                $query_string = sprintf("INSERT INTO %s (%s) VALUES (%s)", $table, implode(', ', array_keys($params)), $placeholders);
    
                // Prepare the statement
                $stmt = $this->db->con->prepare($query_string);
    
                if ($stmt) {
                    // Bind parameters and execute the statement
                    $types = str_repeat('s', count($params)); // Assuming all values are strings
                    $stmt->bind_param($types, ...array_values($params));
    
                    $result = $stmt->execute();
    
                    if ($result) {
                        // Insertion was successful, fetch the created user data
                        $createdUserId = $stmt->insert_id;
                        $stmt->close();
    
                        // Fetch the created user
                        $createdUser = $this->get_user_info($createdUserId, $table);
                        return $createdUser;
                    } else {
                        // Insertion failed
                        return false;
                    }
                }
            }
        }
    }
    
    
    
    public function getUser($email = null, $table = "user"){
        if (isset($email)){
            $result = $this->db->con->query("SELECT * FROM {$table} WHERE email='{$email}'");

            $userArray = array();

            while ($user = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                $userArray[] = $user;
            }

            return $userArray;
        }
    
    }

    public function get_user_info($user_id = null, $table="user"){
        if (isset($user_id)){
            $result = $this->db->con->query("SELECT * FROM {$table} WHERE userID={$user_id}");

            $userArray = array();

            while ($user = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                $userArray[] = $user;
            }

            return empty($userArray) ? false : $userArray;
        }
    }
}

?>