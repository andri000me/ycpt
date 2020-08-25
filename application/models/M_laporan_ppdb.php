<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_laporan_ppdb extends CI_Model {

	public function select_all_tahun_ajaran() 
	{
		$sql = "SELECT * FROM tahun_ajaran
				ORDER BY id_tahun_ajaran DESC";
		$data = $this->db->query($sql);
		return $data->result();
	}

	public function select_all_pendaftaran($id,$id_tahun_ajaran) 
	{
		$sql = "SELECT * FROM pendaftaran2
				LEFT JOIN tahun_ajaran ON tahun_ajaran.id_tahun_ajaran = pendaftaran2.id_tahun_ajaran
				LEFT JOIN unit_pendidikan ON unit_pendidikan.id_unit_pendidikan = pendaftaran2.id_unit_pendidikan
				LEFT JOIN user ON user.id_unit_pendidikan = unit_pendidikan.id_unit_pendidikan
				WHERE user.id_user = '$id' AND pendaftaran2.id_tahun_ajaran = '$id_tahun_ajaran'
				ORDER BY pendaftaran2.nomor_daftar ASC";
		$data = $this->db->query($sql);
		return $data->result();
	}

	public function select_all_pendaftaran1($id,$id_tahun_ajaran) 
	{
		$sql = "SELECT * FROM pendaftaran2
				LEFT JOIN tahun_ajaran ON tahun_ajaran.id_tahun_ajaran = pendaftaran2.id_tahun_ajaran
				LEFT JOIN unit_pendidikan ON unit_pendidikan.id_unit_pendidikan = pendaftaran2.id_unit_pendidikan
				LEFT JOIN user ON user.id_unit_pendidikan = unit_pendidikan.id_unit_pendidikan
				WHERE user.id_user = '$id' AND pendaftaran2.id_tahun_ajaran = '$id_tahun_ajaran'";
		$data = $this->db->query($sql);
		return $data->result();
	}
	
}