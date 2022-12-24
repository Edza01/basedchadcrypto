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

  public function getComments()
  {
    $this->db->query('SELECT * FROM comments ORDER BY date DESC');

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



  
 


   public function getPostsComments()
  {
    $this->db->query('SELECT * FROM posts2 ORDER BY city_name DESC');

    $results = $this->db->resultSet();

    return $results;
  }
  
  public function addPost($data)
  {
    $this->db->query('INSERT INTO posts2 (city_name, user_id) VALUES(:city_name, :user_id)');
    // Bind values
    $this->db->bind(':city_name', $data['city_name']);
    $this->db->bind(':user_id', $data['user_id']);

    // Execute
    if ($this->db->execute()) {
      return true;
    } else {
      return false;
    }
  }
}
