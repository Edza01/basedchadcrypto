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



  
 


   public function getPostsComments()
  {
    $this->db->query('SELECT * FROM comments ORDER BY post_comment DESC');

    $results = $this->db->resultSet();

    return $results;
  }
  
  public function addComment($data)
  {
    $this->db->query('INSERT INTO comments (post_comment, user_id, username, page_id) VALUES(:post_comment, :user_id, :username, :page_id)');
    // Bind values
    $this->db->bind(':post_comment', $data['post_comment']);
    $this->db->bind(':user_id', $data['user_id']);
    $this->db->bind(':username', $data['username']);
    $this->db->bind(':page_id', $data['page_id']);

    // Execute
    if ($this->db->execute()) {
      return true;
    } else {
      return false;
    }
  }
}
