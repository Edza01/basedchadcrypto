<?php
class Post
{
  private $db;

  public function __construct()
  {
    $this->db = new Database;
  }

  public function getPosts($offset = 0)
  {
    $this->db->query('SELECT * FROM posts ORDER BY created_at DESC LIMIT 30 OFFSET '. $offset);

    $results = $this->db->resultSet();

    return $results;
  }

  public function getPostById($id)
  {
    $this->db->query('SELECT * FROM posts WHERE id = :id');
    $this->db->bind(':id', $id);

    $row = $this->db->single();

    return $row;
  }

  public function getPostCount()
  {
    $this->db->query('SELECT COUNT(*) as count FROM posts ORDER BY created_at DESC');

    $results = $this->db->resultSet();

    return $results;
  }



  


 



  // public function addPost($data)
  // {
  //   $this->db->query('INSERT INTO posts (image_name, user_id) VALUES(:image_name, :user_id)');
  //   // Bind values
  //   $this->db->bind(':image_name', $data['image_name']);
  //   $this->db->bind(':user_id', $data['user_id']);

  //   // Execute
  //   if ($this->db->execute()) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  // public function getPostsOrderedBy($orderBy, $direction)
  // {
  //   $this->db->query('SELECT * FROM posts ORDER BY '.$orderBy.' '.$direction);

  //   $results = $this->db->resultSet();

  //   return $results;
  // }

  // public function addWeatherCast($city)
  // {
  //   $urlContents = file_get_contents("http://api.openweathermap.org/data/2.5/weather?q=" . urlencode($city) . "&appid=0e90d55ef2c8bda36c2dbba529e73db4");
  //   $weatherArray = json_decode($urlContents, true);

  //   if ($weatherArray['cod'] == 200) {
  //     return $weatherArray;
  //   } else {
  //     return false;
  //   }
  // }

  // public function checkIfCountryExists($city)
  // {
  //   $upercaseCity = ucfirst($city);

  //   $this->db->query("SELECT * FROM posts WHERE image_name = '{$upercaseCity}'");

  //   $results = $this->db->resultSet();
    
  //   if ($results) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
}
