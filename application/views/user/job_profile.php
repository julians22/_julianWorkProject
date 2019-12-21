<!-- Begin Page Content -->
<div class="container-fluid">

    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Profil Jabatan</h1>
    </div>

    <?= $this->session->flashdata('message'); ?>

    <div class="card shadow-lg">
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover table-borderless" width="100%">
                    <tbody>
                        <tr>
                            <th scope="row" width="350px">Divisi</th>
                            <td><?= $my['division']; ?></td>
                        </tr>
                        <tr>
                            <th scope="row">Departemen</th>
                            <td><?= $my['nama_departemen']; ?></td>
                        </tr>
                        <tr>
                            <th colspan="2" class="text-dark">IDENTIFIKASI JABATAN :</th>
                        </tr>
                        <tr>
                            <th scope="row">Nama Jabatan</th>
                            <td><?= $my['position_name']; ?></td>
                        </tr>
                        <tr>
                            <th scope="row">Bertanggung Jawab Kepada</th>
                            <?php
                                if ($my['posnameatasan1'] <= 1) {
                                    redirect('user','refresh');
                                }
                                    $id = $my['posnameatasan1']; 
                                    $query = "SELECT `position_name`
                                            FROM `position`
                                            WHERE `id` = $id";
                                    $atasan = $this->db->query($query)->row_array();
                                ?>
                            <td><?= $atasan['position_name'];?></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="card-body mt-n5">
            <table class="table table-hover table-borderless">
                <tbody>
                    <tr>
                        <th colspan="2" width="350px" class="text-dark">TUJUAN JABATAN : </th>
                    </tr>
                    <tr>
                        <td width="100%" id="edit1" onclick="textArea1()">
                            <?= $my['tujuan_jabatan']; ?>
                        </td>
                        <td id="tomb1" data-id="<?= $my['position_id']; ?>">

                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="card mt-4 shadow-lg">
        <div class="card-header">
            <div class="row">

                <h4 class="text-black">Tanggung Jawab Utama, Aktivitas Utama & Indikator Kerja :</h4>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">

                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th width="250px">Tanggung Jawab Utama</th>
                            <th>Aktivitas Utama</th>
                            <th>Pengukuran</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $posid = $my['position_id'];
                            $sql = "SELECT `position`.`position_name`, `tanggung_jawab`.`keterangan`, `tanggung_jawab`.`list_aktivitas`, `tanggung_jawab`.`list_pengukuran`, `tanggung_jawab`.`id_tgjwb`
                                    FROM `position`
                                    INNER JOIN `tanggung_jawab` ON `tanggung_jawab`.`id_posisi` = `position`.`id`
                                    WHERE `position`.`id` = $posid";
                            $tgjwb = $this->db->query($sql)->result_array();
                            ?>

                        <?php $i = 1; ?>
                        <?php foreach ($tgjwb as $t): ?>
                        <tr>
                            <th scope="row"><?= $i; ?></th>
                            <td>
                            <!-- <a href="<?= base_url('user/aksitanggungjawab/')  .  $t['id_tgjwb']; ?>"
                                    class="btn btn-success btn-circle btn-sm mr-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </a> -->
                                <?= $t['keterangan']; ?></td>
                            <td>
                                <div class="ml-n4"><?= $t['list_aktivitas']; ?></div>
                            </td>
                            <td>
                                <div class="ml-n4"><?= $t['list_pengukuran']; ?></div>
                            </td>
                        </tr>
                        <?php $i++; ?>
                        <?php endforeach; ?>
                        <form action="<?= base_url('user/addtanggungjawab'); ?>" method="post">
                        <tr>
                        <td></td>
                            <td>
                                <input type="hidden" name="id" value="<?= $my['position_id']; ?>" readonly>
                            <label for="tanggung_jawab">Tanggung Jawab Baru</label>
                                <textarea name="tanggung_jawab" id="tanggung_jawab"></textarea>
                                <?= form_error('tanggung_jawab', '<small class="text-danger pl-3">', '</small>'); ?>
                            </td>
                            <td>
                            <label for="aktivitas">List Aktivitas Baru</label>
                            <textarea name="aktivitas" id="aktivitas"></textarea>
							<?= form_error('aktivitas', '<small class="text-danger pl-3">', '</small>'); ?>
                            </td>
                            <td>
                            <label for="pengukuran">List Pengukuran Baru</label>
                            <textarea name="pengukuran" id="pengukuran"></textarea>
							<?= form_error('pengukuran', '<small class="text-danger pl-3">', '</small>'); ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="row justify-content-end mr-2">
                <button type="submit" class="btn btn-dark btn-circle btn-sm align-items-center">
                    <i class="fas fa-plus"></i>
                    </button>
                </form>
                </div>
            </div>
        </div>
    </div>
    <div class="card mt-4 shadow-lg">
        <div class="card-header">
            <h4 class="text-black">Ruang Lingkup Jabatan <em>(Ruang lingkup dan skala kegiatan yang berhubungan
                    dengan pekerjaan)</em> </h4>
        </div>
        <div class="card-header">
            <h5 class="text-black">Wewenang Pengambilan Keputusan Dan Pengawasan </h5>
        </div>
        <div class="card-body">
            <h6 class="mt-n3"><em>Uraian jenis wewenang yang diperlukan dalam menjalankan aktivitas pekerjaan :</em>
            </h6>
            <div class="table-responsive">
                <table class="table table-bordered">
                    <thead class="text-center">
                        <tr>
                            <th>Kewenangan</th>
                            <th>Anda</th>
                            <th>Atasan 1</th>
                            <th>Atasan 2</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sql = "SELECT * FROM `wewenang` WHERE `id_posisi` = $posid";
                        $wen = $this->db->query($sql)->result_array();
                        ?>
                        <?php foreach($wen as $w) : ?>
                        <tr>
                            <td><?= $w['kewenangan']; ?> <a href="" class="btn btn-success btn-circle btn-sm"><i
                                        class="fas fa-pencil-alt"></i></a></td>
                            <td><?= $w['wen_sendiri']; ?></td>
                            <td><?= $w['wen_atasan1']; ?></td>
                            <td><?= $w['wen_atasan2']; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                <ul>
                    <li>R : Responsibility = Memiliki tanggung jawab dan wewenang untuk mengambil keputusan</li>
                    <li>A : Accountability = tidak dapat mengambil keputusan tetapi bertanggung jawab dalam
                        pelaksanaan dan hasilnya</li>
                    <li>V : Veto = dapat meng-anulir atau mem-blok suatu keputusan</li>
                    <li>C : Consult= sebelum mengambil keputusan harus memberi masukan dan mengkonsultasikan lebih
                        dahulu dengan atasan</li>
                    <li>I : Informed = harus diberi informasi setelah keputusan diambil</li>
                </ul>
            </div>
            <!-- hubungan kerja header -->
            <div class="card-header">
                <h5 class="text-black">Hubungan Kerja </h5>
            </div>
            <!-- hubungan kerja body -->
            <div class="card-body">
                <h6 class="mt-n3"><em>Uraian tujuan dan hubungan jabatan dengan pihak luar dan pihak dalam
                        perusahaan selain dengan atasan langsung maupun bawahan, yang diperlukan dalam melakukan
                        pekerjaan :</em></h6>
                <?php 
                            $sql = "SELECT * FROM `hub_kerja` WHERE `id_posisi` = $posid";
                            $hub = $this->db->query($sql)->row_array();
                            ?>
                <dl>
                    <dt>Hubungan Internal :</dt>
                    <?= $hub['hubungan_int']; ?>
                    <dt>Hubungan Eksternal :</dt>
                    <?= $hub['hubungan_eks']; ?>
                </dl>
            </div>
            <!-- jumlah dan level staff head-->
            <div class="card-header">
                <h5 class="text-black">Jumlah & Level Staff Yang Dibawahi</h5>
            </div>
            <!-- jumlah dan level staff body -->
            <div class="card-body">
                <h6 class="mt-n3"><em>Jumlah dan level staff yang memiliki garis pertanggungjawaban ke jabatan
                        :</em></h6>
                <p>Jumlah Staff: ..... orang</p>
                <ul>
                    <li>Manager</li>
                    <li>Supervisor</li>
                    <li>Staff</li>
                </ul>
            </div>
            <!-- tantangan head -->
            <div class="card-header">
                <h5 class="text-black">Tantangan dan maslah utama</h5>
            </div>
            <!-- tantangan body -->
            <div class="card-body">
                <h6 class="mt-n3"><em>Tantangan yang melekat pada jabatan dan masalah yang sulit/ rumit yang
                        dihadapi dalam kurun waktu cukup panjang :</em></h6>
                <ul>
                    <li>Penyelesaian Project Tepat Waktu</li>
                </ul>
            </div>
            <!-- kualifikasi head -->
            <div class="card-header">
                <h5 class="text-black">Kualifikasi Dan Pengalaman </h5>
            </div>
            <!-- kualifikasi body -->
            <div class="card-body">
                <h6 class="mt-n3"><em>Persyaratan minimum yang harus dipenuhi pendidikan, lama pengalaman kerja yang
                        relevan, kompetensi (soft dan technical skill), atau kualifikasi personal maupun profesional
                        lainnya :</em></h6>
                <h6><strong>Harus Dimiliki:</strong></h6>
                <ul style="list-style-type:disc;">
                    <li>Pendidikan Formal</li>
                    <li>Pengalaman kerja</li>
                    <li>Pengetahuan</li>
                    <li>Kompetensi & Keterampilan</li>
                </ul>
            </div>
            <!-- Jabatan berikutnya header -->
            <div class="card-header">
                <h5 class="text-black">Kualifikasi Dan Pengalaman </h5>
            </div>
            <!-- Jabatan berikutnya body -->
            <div class="card-body">
                <h6 class="mt-n3"><em>Pergerakan karir yang memungkinkan setelah memegang jabatan ini? (baik yang
                        utama/ primary maupun yang secondary)</em></h6>
                <ul>
                    <li>Payroll Specialist</li>
                    <li>System Analyst & Support Section Head</li>
                    <li>Compensation & Benefit Dept. Head</li>
                </ul>
            </div>

        </div>
        <!-- /.container-fluid -->

    </div>
    <!-- End of Main Content -->
    <script>
    var isi = document.getElementById("edit1").innerHTML;

    function textArea1() {
        document.getElementById("edit1").innerHTML = "<textarea name='' id='e1'> " + isi + " </textarea>";
        document.getElementById("tomb1").innerHTML =
            "<a href='#' id='tomb1' class='btn btn-primary mt-4 btn-circle btn-sm'><i class='fas fa-check'></i></a>";

        tinymce.init({
            selector: 'textarea#e1',
            plugins: 'lists',
            toolbar: 'numlist bullist | undo redo | bold italic | outdent indent',
            menubar: false,
            mobile: {
                menubar: true
            }
        });
    }
    </script>