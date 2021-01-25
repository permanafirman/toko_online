<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="btn btn-sm btn-success">
                <?php 
                    $grand_total = 0;
                    if ($keranjang = $this->cart->contents()) 
                    {
                        foreach ($keranjang as $item)
                        {
                            $grand_total = $grand_total + $item['subtotal'];
                        }
                        echo "<h4>Total Belanja Anda  : Rp. ".number_format($grand_total,0,',','.');
                    
                ?>
            </div><br><br>
            <h3>Input Alamat Pengiriman dan Pembayaran</h3>


            <form method="post" action="<?php echo base_url()?>dashboard/proses_pesanan" >
                <div class="form-group">
                    <label >Nama lengkap</label>
                    <input type="text" name="nama" placeholder="Nama Lengkap" class="form-control">                        
                </div>

                <div class="form-group">
                    <label >Alamat Lengkap</label>
                    <input type="text" name="alamat" placeholder="Alamat Lengkap Anda" class="form-control">                        
                </div>

                <div class="form-group">
                    <label >No Telpon</label>
                    <input type="text" name="no_telpon" placeholder="Nomor Telepon Anda" class="form-control">                        
                </div>

                <div class="form-group">
                    <label >Jasa Pengiriman</label>
                    <select class="form-control"> 
                        <option value="">JNE</option>
                        <option value="">TIKI</option>
                        <option value="">POS Indonesia</option>
                        <option value="">Gojek</option>
                        <option value="">Grab</option>
                    </select>                      
                </div>

                <div class="form-group">
                    <label >Pilih Bank</label>
                    <select class="form-control" > 
                        <option value="">BCA - 0110218050</option>
                        <option value="">BRI - 011021807B0</option>
                        <option value="">BNI - 0110218080</option>
                    </select>                      
                </div>
                <button type="submit" class="btn btn-sm btn-primary" >PESAN</button>          
            </form>
            <?php
            }else{
                echo "<h4>Keranjangnya masih kosong, yuk kita belanja! </h4>";
            }

            ?>
        </div>
    </div>
</div>