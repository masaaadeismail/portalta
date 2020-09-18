<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h2 mb-4 text-gray-800"><?= $title; ?></h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Data User</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>Nomor TA</th>
                            <th>Jenis TA</th>
                            <th>Judul TA</th>
                            <th>NIM 1</th>
                            <th>Mahasiswa 1</th>
                            <th>Pembimbing 1</th>
                            <th>Pembimbing 2</th>
                            <th>Link Dokumen</th>
                            <th>Link Aplikasi</th>
                            <th>Keterangan</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        foreach ($all_data as $data_ta) :
                            ?>
                            <tr>
                                <td><?= $data_ta['nomorta']; ?></td>
                                <td><?= $data_ta['jenis']; ?></td>
                                <td><?= $data_ta['judul']; ?></td>
                                <td><?= $data_ta['nim1']; ?></td>
                                <td><?= $data_ta['fnama1'],' ', $data_ta['lnama1']; ?></td>
                                <td><?= $data_ta['pembimbing1']; ?></td>
                                <td><?= $data_ta['pembimbing2']; ?></td>
                                <td><?= $data_ta['pembimbing2']; ?></td>
                                <td><a href=http://produkta.jti.polinema.ac.id/~S<?= $data_ta['nomorta']; ?>>Link</a></td>
                                <td><?= $data_ta['pembimbing2']; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->