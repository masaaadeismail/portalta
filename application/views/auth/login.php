<div class="big-header">Portal Repository Tugas Akhir Jurusan Teknologi Informasi</div>

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">


            <div class="col-lg-5">
            
                <div class="card o-hidden border-0 shadow-lg my-5">
               
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg">
                                <div class="p-5">
                                    <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Selamat Datang, Silahkan Login!</h1>
                                    </div>
                                    <?= $this->session->flashdata('message'); ?>
                                    <form class="user" action="<?= base_url('auth'); ?>" method="post">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user" id="email" placeholder="Masukan Nama Pengguna" name="username" value="<?= set_value('username'); ?>">
                                            <?= form_error(
                                                'username',
                                                '<small class="text-danger pl-3">',
                                                '</small>'
                                            ); ?>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user" id="password" name="password" placeholder="Masukkan Kata Kunci">
                                            <?= form_error(
                                                'password',
                                                '<small class="text-danger pl-3">',
                                                '</small>'
                                            ); ?>
                                        </div>

                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                            Masuk
                                        </button>

                                    </form>
                                    <hr>
                                    <!-- <div class="text-center">
                                        <a class="Large" href="<?= base_url('auth/forgotpass'); ?>">Forgot Password?</a>
                                    </div> -->
                                    <div class="text-center">
                                        <a class="Large" href="<?= base_url('auth/registration'); ?>">Buat Akun!</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>
