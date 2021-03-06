<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Riwayat_Pembayaran extends AUTH_Controller
{

	public function __construct()
	{

		parent::__construct();
		$this->load->model('M_riwayat_pembayaran');
	}

	public function index()
	{

		$data['userdata'] 	= $this->userdata;
		$id 				= $this->userdata->id_user;
		$data['page'] 		= "Riwayat Pembayaran";
		$data['judul'] 		= "Riwayat Pembayaran";
		$data['deskripsi'] 	= "Manage Data Riwayat Pembayaran";
		$data['siswa'] 		= $this->M_riwayat_pembayaran->select_all_siswa($id);
		$this->template->views('riwayat_pembayaran/index', $data);
	}

	function detail($nis, $id_tahun_ajaran)
	{
		$data['userdata']	= $this->userdata;
		$id 				= $this->userdata->id_user;
		$data['page'] 		= "Riwayat Pembayaran";
		$data['judul'] 		= "Riwayat Pembayaran";
		$data['deskripsi'] 	= "Manage Data Riwayat Pembayaran";

		$data['siswa'] 				= $this->M_riwayat_pembayaran->select_all_detail_siswa($nis);
		// $data['total_pembayaran'] 	= $this->M_riwayat_pembayaran->select_all_total_bayar_by_tipe($nis);
		$data['setting_pembayaran'] = $this->M_riwayat_pembayaran->select_all_setting_bayar($nis, $id, $id_tahun_ajaran);
		$data['nomor'] 				= $this->M_riwayat_pembayaran->select_nomor();
		$this->template->views('riwayat_pembayaran/detail', $data);
	}

	public function index_admin()
	{

		$data['userdata'] 	= $this->userdata;
		// $id 				= $this->userdata->id_user;
		$data['page'] 		= "Riwayat Pembayaran";
		$data['judul'] 		= "Riwayat Pembayaran";
		$data['deskripsi'] 	= "Manage Data Riwayat Pembayaran";
		$data['unit_pendidikan'] = $this->M_riwayat_pembayaran->select_all_unit_pendidikan();
		$this->template->views('riwayat_pembayaran/index_admin', $data);
	}

	function detail_siswa($id)
	{
		$data['userdata']	= $this->userdata;
		// $id 				= $this->userdata->id_user;
		$data['page'] 		= "Riwayat Pembayaran";
		$data['judul'] 		= "Riwayat Pembayaran";
		$data['deskripsi'] 	= "Manage Data Riwayat Pembayaran";

		$data['siswa'] 		= $this->M_riwayat_pembayaran->select_siswa($id);
		$this->template->views('riwayat_pembayaran/detail_siswa', $data);
	}

	function detail_pembayaran_siswa($id_unit_pendidikan, $nis)
	{
		$data['userdata']	= $this->userdata;
		// $id 				= $this->userdata->id_user;
		$data['page'] 		= "Riwayat Pembayaran";
		$data['judul'] 		= "Riwayat Pembayaran";
		$data['deskripsi'] 	= "Manage Data Riwayat Pembayaran";

		// echo $id_unit_pendidikan;
		// echo $nis;
		// exit();

		$data['siswa'] 				= $this->M_riwayat_pembayaran->select_all_detail_siswa1($nis);
		// $data['total_pembayaran']= $this->M_riwayat_pembayaran->select_all_total_bayar_by_tipe($nis);
		$data['setting_pembayaran'] = $this->M_riwayat_pembayaran->select_all_setting_bayar1($nis, $id_unit_pendidikan);
		$this->template->views('riwayat_pembayaran/detail_pembayaran', $data);
	}

	function cetak($id_siswa, $id_setting_pembayaran)
	{
		$data['userdata']			= $this->userdata;
		$id 						= $this->userdata->id_user;
		// $data['page'] 			= "Pembayaran";
		// $data['judul'] 			= "Data Pembayaran";
		// $data['deskripsi'] 		= "Manage Data Pembayaran";

		$data['siswa'] 					= $this->M_riwayat_pembayaran->select_siswa_cetak($id_siswa);
		$data['unit_pendidikan'] 		= $this->M_riwayat_pembayaran->select_unit_pendidikan_cetak($id);
		$data['setting_pembayaran'] 	= $this->M_riwayat_pembayaran->select_setting_pembayaran_cetak($id_setting_pembayaran);
		$data['setting_pembayaran1'] 	= $this->M_riwayat_pembayaran->select_setting_pembayaran_cetak1($id_setting_pembayaran);
		// $data['pembayaran'] 			= $this->M_riwayat_pembayaran->select_all_pembayaran_detail($id_pembayaran);
		// $data['detail_pembayaran'] 	= $this->M_riwayat_pembayaran->select_all_detail_pembayaran($id_pembayaran);
		// $data['total_pembayaran'] 	= $this->M_riwayat_pembayaran->select_all_total_pembayaran($id_pembayaran);

		$this->load->view('riwayat_pembayaran/cetak', $data);
	}

	public function bayar($nis, $id_tahun_ajaran_siswa, $id_tahun_ajaran, $id_setting_pembayaran, $hasil2, $nominal, $id_siswa)
	{
		$sql = $this->db->query("SELECT * FROM kelas_siswa_detail
				LEFT JOIN kelas_siswa ON kelas_siswa.id_kelas_siswa = kelas_siswa_detail.id_kelas_siswa
				LEFT JOIN tahun_ajaran ON tahun_ajaran.id_tahun_ajaran = kelas_siswa.id_tahun_ajaran
				WHERE kelas_siswa.id_tahun_ajaran = '$id_tahun_ajaran' AND kelas_siswa_detail.id_siswa = '$id_siswa'");
		$query = $this->db->query($sql)->row();

		foreach ($sql->result_array() as $row => $a) {
		}

		$nis 						= $nis;
		$id_pembayaran 				= $hasil2;
		$tanggal					= date('Y-m-d');
		$id_tahun_ajaran_siswa		= $id_tahun_ajaran_siswa;
		$id_tahun_ajaran_sk			= $id_tahun_ajaran;
		$id_kelas_siswa_detail		= $a['id_kelas_siswa_detail'];
		$id_setting_pembayaran		= $id_setting_pembayaran;
		$nominal					= $nominal;
		$id_siswa					= $id_siswa;

		$data1 = array(

			'id_pembayaran'			=> $hasil2,
			'tanggal'				=> $tanggal,
			'id_tahun_ajaran'		=> $id_tahun_ajaran_sk,
			'id_kelas_siswa_detail'	=> $id_kelas_siswa_detail

		);

		$data2 = array(

			'id_pembayaran'			=> $hasil2,
			'id_setting_pembayaran'	=> $id_setting_pembayaran,
			'nominal'				=> $nominal

		);
		// var_dump($data1);
		// die;

		$this->M_riwayat_pembayaran->insert_pembayaran($data1);
		$this->M_riwayat_pembayaran->insert_detail_pembayaran($data2);
		$this->session->set_flashdata('msg', show_succ_msg('Data Berhasil disimpan'));
		redirect('riwayat_pembayaran/detail/' . $nis . '/' . $id_tahun_ajaran_siswa);
	}
}
