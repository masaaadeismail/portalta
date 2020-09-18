<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>


    <div class="row">
        <div class="col-lg-8">

            <?= form_open_multipart('user/edit'); ?>
            <div class="form-group row">
                <label for="email" class="col-sm-2 col-form-label">Username</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="username" name="username" value="<?= $user['username']; ?>" readonly>
                </div>
            </div>
            <div class="form-group row">
                <label for="textarea" class="col-sm-2 col-form-label">Informasi Aplikasi</label>
                <div class="col-sm-10">
                    <textarea class="form-control" id="detail" rows="10"></textarea>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-2">Manual Book</div>
                        <div class="col-sm-10">
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="image" name="image">
                                <label class="custom-file-label" for="image">Choose file</label>
                            </div>
                        </div>
                    </div>
            </div>

            

            <div class="form-group row justify-content-end">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Update</button>
                </div>
            </div>
            </form>

        </div>
    </div>

<!-- /.container-fluid -->

</div>
<!-- End of Main Content --> 