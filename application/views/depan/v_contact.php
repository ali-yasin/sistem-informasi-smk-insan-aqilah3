<!DOCTYPE html>
<html lang="id">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SMK Insan Aqilah 3 - Hubungi Kami</title>
<!-- Stylesheet -->
<link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/favico.jpg'?>">
<link href="<?php echo base_url().'template/css/style.css'?>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<?php echo base_url().'template/css/ddsmoothmenu.css'?>" />
<link rel="stylesheet" type="text/css" href="<?php echo base_url().'template/css/jquery.fancybox-1.3.4.css'?>" media="screen" />
<link rel="stylesheet" type="text/css" href="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.css'?>"/>
<!-- Javascript -->
<script src="<?php echo base_url().'template/js/jquery.min.js'?>" type="text/javascript"></script>
<script src="<?php echo base_url().'template/js/ddsmoothmenu.js'?>" type="text/javascript"></script>
<script src="<?php echo base_url().'template/js/contentslider.js'?>" type="text/javascript"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/jcarousellite_1.0.1.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/jquery.easing.1.1.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/cufon-yui.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/DIN_500.font.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/menu.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/tabs.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/jquery.mousewheel-3.0.4.pack.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'template/js/jquery.fancybox-1.3.4.pack.js'?>"></script>
<script type="text/javascript" src="<?php echo base_url().'assets/plugins/toast/jquery.toast.min.js'?>"></script>



</head>
<body>
<div id="bg">
<!-- Wapper Sec -->
	<div id="wrapper_sec">
		 <!-- masterhead -->
			<div id="masterhead">
				<!-- Logo -->
                  <!-- masterhead Right Section -->
                      <div class="topright_sec">
                        <!-- top navigation -->
                        <div class="topnavigation">
                                  <ul>
                                      <li class="first">&nbsp;</li>
                                      <li><a >Telp. (021) 29235022</a></li>
                                      <li><a >Email: smkinsanaqilah3@yahoo.co.id</a></li>
                                      <li><a class="nobg" >Jl. Abdul Wahab No.57, Depok. 16517</a></li>
                                      <li class="last">&nbsp;</li>
                                    </ul>
                                </div>
                                <div class="clear"></div>
                          <!-- top search -->
                                  <div class="top_search">
                                      <div class="advance_search"><a href="#"></a></div>
                                      <form action="<?php echo base_url().'berita/search'?>" method="post">
                                        <ul>
                                          <li><input name="textcari" type="text" placeholder="Pencarian" /></li>
                                            <li><button class="search" type="submit">Search</button></li>
                                         </ul>
                                      </form>
                                        
                                    </div>
                          <div class="clear"> </div>        
                      </div>
                    <div class="clear"></div>
                    	  <!-- Navigation -->
                              <div class="navigation">
                                  <div id="smoothmenu1" class="ddsmoothmenu">
                                      <ul>
                                          <li class="first"><a href="<?php echo base_url().''?>">Home</a></li>
                                          <li><a href="#">Profil</a> 
                                              <!-- Sub Menu level 1 -->    
                                                  <ul>
                                                      <li><a href="<?php echo base_url().'kata_sambutan'?>">Kata Sambutan</a></li>
                                                      <li><a href="<?php echo base_url().'visi_misi'?>">Visi Misi</a></li>
                                                      
                                                  </ul>     
                                          </li>
                                          <li><a href="<?php echo base_url().'guru'?>">Guru</a> </li>
                                          <li><a href="#">Kesiswaan</a>
                                              <ul>
                                                  <li><a href="<?php echo base_url().'siswa'?>">Data Siswa</a></li>
                                                  <li><a href="<?php echo base_url().'prestasi_siswa'?>">Prestasi Siswa</a></li>
                                              </ul>     
                                          </li>
                                          <li><a href="<?php echo base_url().'berita'?>">Berita</a> </li>
                                          <li><a href="<?php echo base_url().'pengumuman'?>">Pengumuman</a></li>
                                          <li><a href="<?php echo base_url().'agenda'?>">Agenda</a></li>
                                          <li><a href="<?php echo base_url().'galeri'?>">Gallery</a> </li>
                                          <li><a href="<?php echo base_url().'download'?>">Download</a> </li>
                                          
                                          <li><a class="selected" href="<?php echo base_url().'kontak'?>" class="last">Hubungi Kami</a></li>
                                          
                                      </ul>       
                                  </div>
                           <!-- navigation ends -->       		                            
             	     <div class="clear"></div>	
                 </div>    
		    </div>
		
        <!-- Content Seciton -->
        	<div id="content_section">
        		
                    <div class="clear"></div>
				<!-- Col1 -->
                	<div class="col1">
                    	 
                        
                            <div class="clear"></div>
                                <!-- Note -->
                               	
                               <div class="clear"></div>	
                               
                            
                                
                             <div class="clear"></div>
                             </div>
                             
                                
                                <?php echo $this->session->flashdata('msg');?>

                             	<div class="block1">
                                <h5>Kirim Pesan</h5>
                                <form action="<?php echo base_url().'kontak/kirim_pesan'?>" method="post">
                                	<ul class="inquiry">
                                		<li><input name="xnama" type="text" placeholder="Nama" required/></li> 
                                        <li><input name="xemail" type="email" placeholder="Email" required/></li> 
                                        <li><input name="xkontak" type="text" placeholder="Kontak Person" required/></li>
                                        
                                        <li> 
                                        	<textarea  rows="0" cols="0" name="xpesan" class="txtarea" placeholder="Tinggalkan Pesan disini" required></textarea>
                                        </li>

                                    </ul>
                                    <div class="action"> 
                        						<button class="btn1 left" type="submit">Kirim</button>  
                            	     </form>
                    							</div>
                                </div>
                             	<div class="block2">
                                	<!-- Visit Address -->
                                  <h5>Alamat</h5>
                                  <div class="mailingaddress">
                                          <p>Jl. Abdul Wahab No.57, Sawangan Lama</p>
                                          <p>Kota Depok, Jawa Barat 16517</p>   
                                    </div>
                                    <div class="teleno colr">(021) 29235022</div>
                                <div class="emailaddress">
                                        <p>smkinsanaqilah3@yahoo.co.id</p>
                                      </div>
                                
                              </div>	
                             
                             <div class="clear"></div>
                             </div>
                             <div class="clear"></div>
 							
                             
                             <div class="clear"></div>
                        <!-- col1 ends -->	
                        
                    </div>
              
              		</div>
                <div class="clear"></div>
		
            </div>	
		<div class="clear"></div>
	</div>
</div>    
<!-- Footer Section -->
<?php $this->load->view('depan/v_footer');?>

</body>
</html>
















