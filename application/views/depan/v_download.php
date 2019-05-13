<!DOCTYPE html>
<html lang="id">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SMK Insan Aqilah 3 - Download</title>
<!-- Stylesheet -->
<link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/favico.jpg'?>">
<link href="<?php echo base_url().'template/css/style.css'?>" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<?php echo base_url().'template/css/ddsmoothmenu.css'?>" />
<link rel="stylesheet" type="text/css" href="<?php echo base_url().'template/css/jquery.fancybox-1.3.4.css'?>" media="screen" />
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
</head>
<body>
<div id="bg">
<!-- Wapper Sec -->
	<div id="wrapper_sec">
		 <!-- masterhead -->
			<div id="masterhead">
				<!-- Logo -->
                	<div class="logo"><a href="<?php echo base_url().''?>"><img src="<?php echo base_url().'template/images/'?>" alt="" /></a></div>
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
                                          <li><a class="selected" href="<?php echo base_url().'download'?>">Download</a> </li>
                                          
                                          <li><a href="<?php echo base_url().'kontak'?>" class="last">Hubungi Kami</a></li>
                                          
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
                
                         <!-- Content Heading -->
                         	<div class="content_heading">
                            	<div class="heading"><h2>Download file yang Anda butuhkan.</h2> </div>
                            	
                            </div>
                             
                           	
                           <div class="clear"></div>
                             <!-- Content Block -->
                             	<div class="listingblock">
                                	
                                    <div class="clear"></div>
                                <div class="course_listing">
                                <ul class="listheading">
                                	<li class="code colr">No</li>
                                    <li class="coursename colr">Judul</li>
                                    <li class="time colr">Tanggal</li>
                                    <li class="location colr">Oleh</li>
                                    <li class="instructor colr">Aksi</li>
                                </ul>
                                <?php
                                    $no=0;
                                    foreach ($data->result_array() as $d) :
                                        $no++;
                                        $id=$d['file_id'];
                                        $judul=$d['file_judul'];
                                        $deskripsi=$d['file_deskripsi'];
                                        $oleh=$d['file_oleh'];
                                        $tanggal=$d['tanggal'];
                                        $download=$d['file_download'];
                                        $file=$d['file_data'];
                                    ?>
                                <ul class="courselisting">
                                	<li class="code"><?php echo $no;?></li>
                                    <li class="coursename"><?php echo $judul;?></li>
                                    <li class="time"><?php echo $tanggal;?></li>
                                    <li class="location"><?php echo $oleh;?></li>
                                    <li class="instructor"><a href="<?php echo base_url().'admin/files/download/'.$id;?>">Download</a></li>
                                
                                </ul>
                              <?php endforeach;?>
                                
                             <div class="clear"></div>
                          </div>
                                </div>
                                
                                <!-- Note -->
                               	<div class="note">
                               		<a href="#" class="close">&nbsp;</a>
                               		<p>
                                   		<strong> NB:</strong> Silahkan download file yang sesuai dengan kebutuhan Anda!.
                               		</p>
                               </div>	
                             
                             
                            
                             
                               	<div class="clear"></div>
                    		<!-- col1 ends -->	
                   
 						<!--col2 ends -->			
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
















