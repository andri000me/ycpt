<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Laporan_bulanan_spp extends AUTH_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('M_laporan_bulanan_spp');
    }

    public function index()
    {
        $data['userdata']             = $this->userdata;
        $id                         = $this->userdata->id_user;
        $data['page']                 = "Laporan";
        $data['judul']                 = "Laporan Bulanan Uang SPP";
        $data['deskripsi']             = "";
        $data['unit_pendidikan']     = $this->M_laporan_bulanan_spp->select_all_unit_pendidikan($id);
        $data['tahun_ajaran']         = $this->M_laporan_bulanan_spp->select_all_tahun_ajaran();
        $this->template->views('laporan_bulanan_spp/index', $data);
    }

    public function index_admin()
    {
        $data['userdata']             = $this->userdata;
        // $id 						= $this->userdata->id_user;
        $data['page']                 = "Laporan";
        $data['judul']                 = "Laporan Bulanan Uang SPP";
        $data['deskripsi']             = "";
        // $data['unit_pendidikan'] 	= $this->M_laporan_penerimaan_uang->select_all_unit_pendidikan($id);
        // $data['tahun_ajaran'] 		= $this->M_laporan_penerimaan_uang->select_all_tahun_ajaran();
        $this->template->views('laporan_bulanan_spp/index_admin', $data);
    }
}
