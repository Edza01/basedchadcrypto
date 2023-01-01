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
    $this->db->query('SELECT * FROM posts ORDER BY created_at DESC LIMIT 8 OFFSET '. $offset);

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


  
  // public function getLatestPost()
  // {
  //   $this->db->query('SELECT * FROM posts ORDER BY created_at DESC LIMIT 1');
    
  //   $row = $this->db->single();

  //   return $row;
  // }




  public function getCommentsFromPostWhere_page_id($page_id)
  {
    $this->db->query("SELECT * FROM comments WHERE page_id = :page_id ORDER BY date DESC");
    $this->db->bind(':page_id', $page_id);

    $results = $this->db->resultSet();

    return $results;
  }




  
  // public function addComment($data)
  // {
  //   $this->db->query('INSERT INTO comments (post_comment, username, page_id) VALUES(:post_comment, :username, :page_id)');
  //   // Bind values
  //   $this->db->bind(':post_comment', $data['post_comment']);
  //   $this->db->bind(':username', $data['username']);
  //   $this->db->bind(':page_id', $data['page_id']);

  //   // Execute
  //   if ($this->db->execute()) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }





  // public function getSimilarPostsWhere_related_posts($related_posts)
  // {
  //   $this->db->query("SELECT * FROM posts WHERE related_posts = :related_posts ORDER BY created_at DESC");
  //   $this->db->bind(':related_posts', $related_posts);

  //   $results = $this->db->resultSet();

  //   return $results;
  // }

  
}
