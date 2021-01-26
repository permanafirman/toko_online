<body class="bg-gradient-primary">

    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center"> 

            <div class="col-xl-5 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Form Registrasi</h1>
                                    </div>
                                    <form class="user" method="post" action="<?php base_url('registrasi/index') ?>">
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Masukan Nama Anda..." name="nama">
                                            <?php echo form_error('nama','<div class="text-danger small ml-2 mt-2">','</div>');?>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Masukan Username..." name="username">
                                                <?php echo form_error('username','<div class="text-danger small ml-2 mt-2">','</div>');?>
                                        </div>                                        
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Password" name="password_1">
                                                <?php echo form_error('password_1','<div class="text-danger small ml-2 mt-2">','</div>');?>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user"
                                                id="exampleInputPassword" placeholder="Repeat Password" name="password_2">
                                                <?php echo form_error('password_2','<div class="text-danger small ml-2 mt-2">','</div>');?>
                                        </div>
                                        
                                        <button type="submit" class="btn btn-primary form-control">Daftar</button>
                                        
                                    </form>
                                    
                                    <div class="text-center">
                                        <a class="small" href="<?php echo base_url('auth/login'); ?>">Sudah punya akun silahkan login</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>