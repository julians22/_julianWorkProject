<!-- Begin Page Content -->
<div class="container-fluid">

	<!-- Page Heading -->
	<div class="d-sm-flex align-items-center justify-content-between mb-4">
		<h1 class="h3 mb-0 text-gray-800"><?= $title; ?></h1>
	</div>
	<div class="row">
		<div class="col-auto my-1">
			<form action="">
				<select class="custom-select mr-sm-2" id="jenis-surat" name="jenis">
					<option value="">All</option>
					<?php foreach ($jenis as $j) : ?>
						<option value="<?= $j['id']; ?>"><?= $j['jenis_surat']; ?></option>
					<?php endforeach; ?>
				</select>
			</form>
		</div>
	</div>

	<div class="row">
		<div class="col-xl col-lg">
			<div class="card mb-2">
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-hover" id="table-nomor">
							<thead>
								<tr>
									<th>No. Surat</th>
									<th>Perihal</th>
									<th>PIC</th>
									<th>Tanggal</th>
									<th>Note</th>
									<th>Tipe Surat</th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
