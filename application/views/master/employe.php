<div class="container-fluid">
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>

    <div class="row">
            <?= $this->session->flashdata('message'); ?>
        </div>
        <div class="card shadow-lg mt-1">
            <div class="card-header">
                <a href="" class="btn btn-primary" data-toggle="modal" data-target="#addSubMenuModal">Add
                    New Employe</a>
            </div>

            <div class="card-body">
            <div class="table-responsive">
                <table class="table table-hover" id="dataTable" width="100%">
                    <thead>
                        <tr>
                            <th scope="col">Nik</th>
                            <th scope="col">Nama</th>
                            <th scope="col">Level Org.</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($employe as $emp): ?>
                        <tr>
                            <td><?= $emp['nik']; ?></td>
                            <td><?= $emp['emp_name']; ?></td>
                            <td><?= $emp['level_org']; ?></td>
                        </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
                </div>
            </div>
        </div>