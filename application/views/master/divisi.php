<div class="container-fluid">
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
        <?= $this->session->flashdata('message'); ?>
    </div>
    <div class="card shadow-lg mt-1">
        <div class="card-header">
            <a href="" class="btn btn-primary tombolTambahData" data-toggle="modal" data-target="#addDiv">Add
                New Divisi</a>
        </div>

        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover" id="dataTable" width="100%">
                    <thead>
                        <tr>
                            <th scope="col">Divisi</th>
                            <th scope="col">Nik Head Division</th>
                            <th scope="col">Nama Head Division</th>
                            <th scope="col">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($divisi as $div): ?>
                        <tr>
                            <td><?= $div['division']; ?></td>
                            <td><?= $div['nik_div_head']; ?></td>
                            <td><?= $div['emp_name']; ?></td>
                            <td>
                                <a href="<?= base_url('master/editdivisi/')  .  $div['id']; ?>"
                                    class="badge badge-info" class="badge badge-info tampilModalUbah" data-toggle="modal" data-target="#addDivModal" data-id="<?= $div['id']; ?>">Edit</a>
                                <a href="<?= base_url('master/deldiv/')  .  $div['id']; ?>"
                                    class="badge badge-danger hapus">Delete</a>
                            </td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <!-- ADD Modal -->
    <div class="modal fade" id="addDiv" tabindex="-1" role="dialog" aria-labelledby="addDivModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addDivModalLabel"> Add Division</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form action="" method="post">
                        <input type="hidden" name="id" id="id">
                        <div class="form-group">
                            <input type="text" class="form-control" id="divisi" name="divisi"
                                placeholder="Division name">
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="nik" name="nik" placeholder="NIK Head Division">
                        </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save</button>
                </div>
                </form>
            </div>
        </div>
    </div>