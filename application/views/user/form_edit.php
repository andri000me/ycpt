<script type="text/javascript">
  function cekform()
  {
    if (!$("#nama").val()) 
    {
      alert('Nama Tidak boleh kosong');
      $("#nama").focus()
      return false;
    }
    if (!$("#username").val()) 
    {
      alert('Username Tidak boleh kosong');
      $("#username").focus()
      return false;
    }
    if (!$("#id_unit_pendidikan").val()) 
    {
      alert('Unit Pendidikan Tidak boleh kosong');
      $("#id_unit_pendidikan").focus()
      return false;
    }
    // if (!$("#password").val()) 
    // {
    //   alert('Password Tidak boleh kosong');
    //   $("#password").focus()
    //   return false;
    // }
  }
</script>
<div class="box box-primary">
  <div class="box-header with-border">
    <h3 class="box-title">Edit Data</h3>
  </div>
  <!-- /.box-header -->
  <!-- form start -->
  <?php foreach($user as $a){ ?>
  <form role="form" action="<?php echo base_url(); ?>user/update" method="POST" onsubmit="return cekform();">
    <div class="box-body">
      <input type="hidden" class="form-control" name="id_user" id="id_user" placeholder="Enter ID" value="<?php echo $a->id_user; ?>">
      <div class="form-group">
        <label for="exampleInputNama">Nama Admin</label>
        <input type="text" class="form-control" name="nama" id="nama" placeholder="Enter Nama" value="<?php echo $a->nama; ?>">
      </div>
      <div class="form-group">
        <label for="exampleInputUsername">Username</label>
        <input type="text" class="form-control" name="username" id="username" placeholder="username" value="<?php echo $a->username; ?>">
      </div>
      <div class="form-group">
        <label for="exampleInputNama">Unit Pendidikan<b style="color: red;">*</b></label>
        <select class="form-control select2" name="id_unit_pendidikan" id="id_unit_pendidikan" data-placeholder="Select Unit Pendidikan">
          <option></option>
          <?php foreach ($unit_pendidikan as $j) { ?>
          <option value="<?php echo $j->id_unit_pendidikan; ?>" <?php if($j->id_unit_pendidikan == $a->id_unit_pendidikan){echo "selected='selected'";} ?>><?php echo $j->unit_pendidikan; ?></option>
          <?php } ?>
        </select>
      </div>
      <!--
      <div class="form-group">
        <label for="exampleInputPassword">Password</label>
        <input type="password" class="form-control" name="password" id="password" placeholder="Enter Password" value="<?php echo $a->password; ?>">
      </div>
      -->
      <!-- <div class="form-group">
        <label for="exampleInputFile">Foto</label>
        <input type="file" id="exampleInputFile">
      </div> -->
    </div>
    <!-- /.box-body -->
    <div class="box-footer">
      <button type="submit" class="btn btn-primary">Simpan</button>
    </div>
  </form>
  <?php } ?>
</div>
<!-- /.box -->