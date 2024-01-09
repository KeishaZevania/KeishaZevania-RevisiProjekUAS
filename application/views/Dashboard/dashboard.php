<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <section class="content-header">
            <h1>
                Dashboard
            </h1>
            <span>Hallo selamat datang, <b><?= $this->session->userdata('nama_user') ?></b> Silahkan kelola dashboard Catering Anda.</span>
            <ol class="breadcrumb">
                <li><a href="<?= site_url('Dashboard'); ?>"><i class="fa fa-dashboard"></i> Home</a></li>
                <li class="active"><a href="<?= site_url('Dashboard'); ?>"><?= $judul; ?></a></li>
            </ol>
        </section>
        <br>
        <section class="content">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>150</h3>

                            <p>Menu Makanan</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
              
                <!-- ./col -->
            </div>
        </section>
        <!-- /.content -->
</div>
<!-- /.content-wrapper -->