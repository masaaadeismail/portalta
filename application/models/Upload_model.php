<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

class Upload_model extends CI_Model
{
     public function all()
     {
          $this->db->select('*');
          $this->db->from('berkas');
          $this->db->order_by('id', 'DESC');

          return $this->db->get();
     }

     public function insert($data)
     {
          $this->db->insert('berkas', $data);

          return ($this->db->affected_rows() > 0) ? true : false;
     }
}