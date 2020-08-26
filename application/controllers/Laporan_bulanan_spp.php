<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Laporan_bulanan_spp extends AUTH_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_kelas_siswa');
        $this->load->model('M_siswa');
        $this->load->model('M_setting_pembayaran');
    }

    public function index_admin()
    {
        $data['userdata']             = $this->userdata;
        $data['page']                 = "Laporan";
        $data['judul']                 = "Laporan Bulanan Uang SPP";
        $data['deskripsi']             = "";
        $data['unit_pendidikan'] = $this->M_kelas_siswa->select_unit_pendidikan();
        $this->template->views('laporan_bulanan_spp/index_admin', $data);
    }

    public function laporan_bulanan_spp_detail($id)
    {

        $data['userdata']         = $this->userdata;
        $data['page']             = "Kelas Siswa";
        $data['judul']             = "Data Master";
        $data['deskripsi']         = "Manage Data Kelas Siswa";
        // $data['kelas_siswa']    = $this->M_kelas_siswa->select_kelas_siswa($id);
        $data['siswa']    = $this->M_siswa->select_all_siswa($id);
        $data['bulan']    = $this->M_setting_pembayaran->select_all_setting_pembayaran_spp($id);
        $data['unit_pendidikan'] = $this->M_kelas_siswa->select_unit_pendidikan_siswa($id);
        $this->template->views('laporan_bulanan_spp/detail_laporan_bulanan_spp', $data);
    }
}
