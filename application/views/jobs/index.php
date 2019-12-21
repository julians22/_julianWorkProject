<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <div class="col-lg-6">
            <?= $this->session->flashdata('message'); ?>
        </div>
    </div>

    <!-- card start -->
    <div class="card shadow mb-4">
        <!-- Card Header - Accordion -->
        <a href="#collapseCardExample" class="d-block card-header py-3" data-toggle="collapse" role="button">
            <h6 class="m-0 font-weight-bold text-black-50">Profil Jabatan Anda</h6>
        </a>
        <!-- Card Content - Collapse -->
        <div class="collapse show" id="collapseCardExample">
            <div class="card-body">
                <div class="row mb-2">
                    <div class="col-lg-3 font-weight-bold">Divisi</div>
                    <div class="col-lg-8"> : <?= $my['division']; ?></div>
                </div>

                <div class="row mb-2">
                    <div class="col-lg-3 font-weight-bold">Departemen</div>
                    <div class="col-lg-8"> : <?= $my['nama_departemen']; ?></div>
                </div>

                <div class="row align-items-end mt-3 mb-2">
                    <div class="col">
                        <h5 class="font-weight-bold">Identifikasi Jabatan</h5>
                    </div>
                </div>

                <div class="row mb-2">
                    <div class="col-lg-3 font-weight-bold">Nama Jabatan</div>
                    <div class="col-lg-8"> : <?= $my['position_name']; ?></div>
                </div>

                <div class="row mb-2">
                <div class="col-lg-3 font-weight-bold">Bertanggung Jawab Kepada</div>
                <?php
                    if ($my['posnameatasan1'] <= 1) {
                        echo '<div class="col-lg-4"><select name="position" class="form-control form-control-sm  border border-danger">';
                        foreach ($pos as $p) {
                            echo '<option value="' . $p['id'] . '">' .$p['position_name'] . '</option>';
                        }
                            echo '</select> </div>';
                    }else{
                        $id = $my['posnameatasan1']; 
                        $query = "SELECT `position_name`
                                FROM `position`
                                WHERE `id` = $id";
                        $atasan = $this->db->query($query)->row_array();

                        echo '<div class="col-lg-8"> : ' . $atasan['position_name'] . '</div>';
                    }
                    ?>
                </div>

                <div class="row align-items-end mt-3 mb-2">
                    <div class="col">
                        <h5 class="font-weight-bold">Tujuan Jabatan</h5>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Dangerrrrrr -->
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

