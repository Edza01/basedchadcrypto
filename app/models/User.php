<?php
  class User {
    private $db;

    public function __construct(){
      $this->db = new Database;
    }

    // Regsiter user
    public function register($data){
      $this->db->query('INSERT INTO users (name, nickname, password) VALUES(:name, :nickname, :password)');
      // Bind values
      $this->db->bind(':name', $data['name']);
      $this->db->bind(':nickname', $data['nickname']);
      $this->db->bind(':password', $data['password']);

      // Execute
      if($this->db->execute()){
        return true;
      } else {
        return false;
      }
    }

    // Login User
    public function login($nickname, $password){
      $this->db->query('SELECT * FROM users WHERE nickname = :nickname');
      $this->db->bind(':nickname', $nickname);

      $row = $this->db->single();

      $hashed_password = $row->password;
      if(password_verify($password, $hashed_password)){
        return $row;
      } else {
        return false;
      }
    }

    // Find user by nickname
    public function findUserBynickname($nickname){
      $this->db->query('SELECT * FROM users WHERE nickname = :nickname');
      // Bind value
      $this->db->bind(':nickname', $nickname);

      $row = $this->db->single();

      // Check row
      if($this->db->rowCount() > 0){
        return true;
      } else {
        return false;
      }
    }
  }