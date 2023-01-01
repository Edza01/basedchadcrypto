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
    if (is_numeric($offset))
    {
      $this->db->query('SELECT * FROM posts ORDER BY created_at DESC LIMIT 8 OFFSET '. $offset);

      $results = $this->db->resultSet();

      return $results;
    }
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

  public function getCommentsFromPostWhere_page_id($page_id)
  {
    $this->db->query("SELECT * FROM comments WHERE page_id = :page_id ORDER BY date DESC");
    $this->db->bind(':page_id', $page_id);

    $results = $this->db->resultSet();

    return $results;
  }

  public function addComment($data)
  {
    $this->db->query('INSERT INTO comments (post_comment, username, page_id) VALUES(:post_comment, :username, :page_id)');
    // Bind values
    $this->db->bind(':post_comment', $data['post_comment']);
    $this->db->bind(':username', $data['username']);
    $this->db->bind(':page_id', $data['page_id']);

    // Execute
    if ($this->db->execute()) {
      return true;
    } else {
      return false;
    }
  }

  public function getSimilarPostsWhere_related_posts($related_posts, $id)
  {
    $this->db->query("SELECT * FROM posts WHERE related_posts = :related_posts AND id != :id ORDER BY created_at DESC LIMIT 6");
    $this->db->bind(':related_posts', $related_posts);
    $this->db->bind(':id', $id);

    $results = $this->db->resultSet();

    return $results;
  }

  public function getLearnPosts()
  {
      $this->db->query('SELECT * FROM learn ORDER BY id');

      $results = $this->db->resultSet();

      return $results;
  }



  
}
