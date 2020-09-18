<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Ta_model extends CI_Model
{
    // Users Data
    public function getLA()
    {
        $query = $this->db->get_where('tugas_akhir',['jenis'=>'Laporan Akhir']);
        return $query->result_array();
    }

    public function getSI()
    {
        $query = $this->db->get_where('tugas_akhir',['jenis'=>'Skripsi']);
        return $query->result_array();
    }
    
}
