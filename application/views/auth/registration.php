<div class="container-fluid">
    <div class="card o-hidden border-0 shadow-lg my-5 col-lg-8 mx-auto">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Registrasi Sistem Repository Tugas Akhir</h1>
                        </div>
                        <hr>
                        <div class="text-center">
                            <h1 class="h5 text-gray-900 mb-4">Akun</h1>
                        </div>
                        <hr>
                        <br>
                        <form class="user" method="post" action="<?= base_url('auth/registration'); ?>">
                            <div class="form-group row">
                                <label for="name" class="col-sm-3 col-form-label">Jenis Tugas Akhir</label>
                                <div class="col-sm-9">
                                    <select class="form-control" id="jenis" name="jenis" onchange="jenisOnChange()">
                                        <option value="Pilih Jenis">Pilih Jenis</option>
                                        <option value="Laporan Akhir">Laporan Akhir</option>
                                        <option value="Skripsi">Skripsi</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-sm-3 col-form-label">Nomor TA</label>
                                <div class="col-sm-1">
                                    <input type="text" id="preUsername" class="form-control" value="--" readonly="true">
                                </div>
                                <div class="col-sm-8">
                                    <input type="text" name="username" id="username" class="form-control" value="<?= set_value('username'); ?>">
                                    <?= form_error(
                                        'username',
                                        '<small class="text-danger pl-3">',
                                        '</small>'
                                    ); ?>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-sm-3 col-form-label">Sandi</label>
                                <div class="col-sm-9">
                                    <input type="password" id="password1" name="password1" class="form-control">
                                    <?= form_error(
                                        'password1',
                                        '<small class="text-danger pl-3">',
                                        '</small>'
                                    ); ?>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-sm-3 col-form-label">Konfirmasi Sandi</label>
                                <div class="col-sm-9">
                                    <input type="password" id="password2" name="password2" class="form-control">
                                </div>
                            </div>
                            <br>
                            <hr>
                            <div class="text-center">
                                <h1 class="h5 text-gray-900 mb-4">Informasi Tugas Akhir</h1>
                            </div>
                            <hr>
                            <br>
                            <div class="form-group row">
                                <label for="email" class="col-sm-3 col-form-label">Judul Tugas Akhir</label>
                                <div class="col-sm-9">
                                    <textarea class="form-control" name="judul" id="judul" rows="3" value="<?= set_value('judul'); ?>"></textarea>
                                </div>
                            </div>
                            <br>
                            <div class="form-group" id="penulis1" style="display: none;">
                                <div class="form-group row">
                                    <label for="name" class="col-sm-3 col-form-label"><h5>Penulis 1</h5></label>
                                    <div class="col-sm-9">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="name" class="col-sm-3 col-form-label">NIM</label>
                                    <div class="col-sm-9">
                                        <input type="text" name="nim" id="nim" class="form-control"value="<?= set_value('nim'); ?>">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="name" class="col-sm-3 col-form-label">Nama</label>
                                    <!-- <div class="col-sm-9"> -->
                                        <div class="col-sm-4 mb-3 mb-sm-0">
                                            <input type="text" name="first_name" id="first_name" class="form-control" placeholder="First Name" value="<?= set_value('first_name'); ?>">
                                            <?= form_error(
                                                'first_name',
                                                '<small class="text-danger pl-3">',
                                                '</small>'
                                            ); ?>
                                        </div>
                                        <div class="col-sm-5">
                                            <input type="text" name="last_name" id="last_name" class="form-control" placeholder="Last Name" value="<?= set_value('last_name'); ?>">
                                            <?= form_error(
                                                'last_name',
                                                '<small class="text-danger pl-3">',
                                                '</small>'
                                            ); ?>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-3 col-form-label">Email</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="email" id="email" class="form-control" value="<?= set_value('email'); ?>">
                                            <?= form_error(
                                                'email',
                                                '<small class="text-danger pl-3">',
                                                '</small>'
                                            ); ?>
                                        </div>
                                    </div>
                                    <br>
                                </div>
                                <div class="form-group" id="penulis2" style="display: none;">
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-3 col-form-label"><h5>Penulis 2</h5></label>
                                        <div class="col-sm-9">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-3 col-form-label">NIM</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="nim2" id="nim2" class="form-control" value="<?= set_value('nim2'); ?>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-3 col-form-label">Nama</label>
                                        <!-- <div class="col-sm-9"> -->
                                            <div class="col-sm-4 mb-3 mb-sm-0">
                                                <input type="text" name="first_name2" id="first_name2" class="form-control" placeholder="First Name" value="<?= set_value('first_name2'); ?>">
                                            </div>
                                            <div class="col-sm-5">
                                                <input type="text" name="last_name2" id="last_name2" class="form-control" placeholder="Last Name" value="<?= set_value('last_name2'); ?>">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="name" class="col-sm-3 col-form-label">Email</label>
                                            <div class="col-sm-9">
                                                <input type="text" name="email2" id="email2" class="form-control" value="<?= set_value('email2'); ?>">
                                            </div>
                                        </div>
                                        <br>
                                    </div>                        
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-4 col-form-label"><h5>Dosen Pembimbing</h5></label>
                                        <div class="col-sm-9">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-3 col-form-label">Pembimbing 1</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="pembimbing1" id="pembimbing1" class="form-control" value="<?= set_value('pembimbing1'); ?>">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label for="name" class="col-sm-3 col-form-label">Pembimbing 2</label>
                                        <div class="col-sm-9">
                                            <input type="text" name="pembimbing2" id="pembimbing2" class="form-control" value="<?= set_value('pembimbing2'); ?>">
                                        </div>
                                    </div>
                                    <br>
                                    <br>
                                    <div class="form-group row justify-content-end text-center">
                                        <div class="col-sm-12">
                                            <button id="btnSubmit" type="submit" class="btn btn-primary" disabled="true">Daftarkan</button>
                                        </div>
                                    </div>
                                </form>
                                <hr>
                                <div class=" text-center">
                                    <a class="Large" href="<?= base_url('auth'); ?>">Sudah Punya Akun? Silahkan Masuk!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script type="text/javascript">
            var penulis1 = document.getElementById('penulis1');
            var penulis2 = document.getElementById('penulis2');
            var preUsername  =document.getElementById('preUsername');
            var btnSubmit = document.getElementById('btnSubmit');

            function jenisOnChange(){
                var val = document.getElementById('jenis');
                var val = val.options[val.selectedIndex].value;
                switch(val){
                    case 'Skripsi':
                        if(penulis1.style.display !== 'block'){penulis1.style.display = 'block';}
                        if(penulis2.style.display !== 'none'){penulis2.style.display = 'none';}
                        preUsername.value = 'S';
                        btnSubmit.disabled = false;
                        break;
                    case 'Laporan Akhir':
                        if(penulis1.style.display !== 'block'){penulis1.style.display = 'block';}
                        if(penulis2.style.display !== 'block'){penulis2.style.display = 'block';}
                        preUsername.value = 'L';
                        btnSubmit.disabled = false;
                        break;
                    default:
                        if(penulis1.style.display !== 'none'){penulis1.style.display = 'none';}
                        if(penulis2.style.display !== 'none'){penulis2.style.display = 'none';}
                        preUsername.value = '--';
                        btnSubmit.disabled = true;
                        break;
                }
            }
        </script>