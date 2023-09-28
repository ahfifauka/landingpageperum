@extends('layouts.landingtemplate')
@section('content')
<div class="hero">
   <div class="hero-slide">
      <div class="img overlay" style="background-image: url('{{ asset('landingtemplate/images/hero_bg_3.jpg') }}')">
      </div>
      <div class="img overlay" style="background-image: url('{{ asset('landingtemplate/images/hero_bg_2.jpg') }}">
      </div>
      <div class="img overlay" style="background-image: url('{{ asset('landingtemplate/images/hero_bg_1.jpg') }}">
      </div>
   </div>

   <div class="container">
      <div class="row justify-content-center align-items-center">
         <div class="col-lg-9 text-center">
            <x-alert></x-alert>
            <h1 class="heading" data-aos="fade-up">
               Temukan rumah yang cocok denganmu bersama kami!
            </h1>
         </div>
      </div>
   </div>
</div>
<div class="section">
   <div class="container">
      <div class="row mb-5 align-items-center">
         <div class="col-lg-6">
            <h2 class="font-weight-bold text-primary heading">
               Koleksi Kami
            </h2>
         </div>
         <div class="col-lg-6 text-lg-end">
            <p>
               <a href="{{ route('showall') }}" target="_blank" class="btn btn-primary text-white py-3 px-4">Lihat
                  semua koleksi kami</a>
            </p>
         </div>
      </div>
      <div class="row">
         <div class="col-12">
            <div class="property-slider-wrap">
               <div class="property-slider">
                  @foreach ($properties as $item)
                  <div class="property-item">
                     <a href="property-single.html" class="img">
                        <img src="{{ asset('storage/property/'. $item->gambar) }}" alt="Image" class="img-fluid"
                           style="width: 400px; aspect-ratio:1/1; object-fit: cover; object-position: center " />
                     </a>

                     <div class="property-content">
                        <div>
                           <span class="city d-block mb-3">{{ ucwords($item->tipe) }} ({{ $item->lantai }} lantai)
                           </span>
                           <h4 class="text-uppercase fs-5">Rp. {{ number_format($item->harga) }}</h4>
                           <h6 class="text-uppercase fs-5">Tipe {{ $item->lb }} / {{ $item->lt }}</h6>

                           <div class="specs d-flex mb-4">
                              <span class="d-block d-flex align-items-center me-3">
                                 <span class="icon-bed me-2"></span>
                                 <span class="caption">{{ $item->kt }} Kamar Tidur</span>
                              </span>
                              <span class="d-block d-flex align-items-center">
                                 <span class="icon-bath me-2"></span>
                                 <span class="caption">{{ $item->km }} Kamar Mandi</span>
                              </span>
                           </div>
                        </div>
                     </div>
                  </div>
                  @endforeach
                  <!-- .item -->

               </div>

               <div id="property-nav" class="controls" tabindex="0" aria-label="Carousel Navigation">
                  <span class="prev" data-controls="prev" aria-controls="property" tabindex="-1">Prev</span>
                  <span class="next" data-controls="next" aria-controls="property" tabindex="-1">Next</span>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

<section class="features-1">
   <div class="container">
      <div class="row">
         <div class="col-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
            <div class="box-feature">
               <span class="flaticon-house"></span>
               <h3 class="mb-3">Our Properties</h3>
               <p>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                  Voluptates, accusamus.
               </p>
               <p><a href="#" class="learn-more">Learn More</a></p>
            </div>
         </div>
         <div class="col-6 col-lg-3" data-aos="fade-up" data-aos-delay="500">
            <div class="box-feature">
               <span class="flaticon-building"></span>
               <h3 class="mb-3">Property for Sale</h3>
               <p>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                  Voluptates, accusamus.
               </p>
               <p><a href="#" class="learn-more">Learn More</a></p>
            </div>
         </div>
         <div class="col-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
            <div class="box-feature">
               <span class="flaticon-house-3"></span>
               <h3 class="mb-3">Real Estate Agent</h3>
               <p>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                  Voluptates, accusamus.
               </p>
               <p><a href="#" class="learn-more">Learn More</a></p>
            </div>
         </div>
         <div class="col-6 col-lg-3" data-aos="fade-up" data-aos-delay="600">
            <div class="box-feature">
               <span class="flaticon-house-1"></span>
               <h3 class="mb-3">House for Sale</h3>
               <p>
                  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                  Voluptates, accusamus.
               </p>
               <p><a href="#" class="learn-more">Learn More</a></p>
            </div>
         </div>
      </div>
   </div>
</section>

<div class="section sec-testimonials">
   <div class="container">
      <div class="row mb-5 align-items-center">
         <div class="col-md-6">
            <h2 class="font-weight-bold heading text-primary mb-4 mb-md-0">
               Dengarkan mereka
            </h2>
         </div>
         <div class="col-md-6 text-md-end">
            <div id="testimonial-nav">
               <span class="prev" data-controls="prev">Prev</span>

               <span class="next" data-controls="next">Next</span>
            </div>
         </div>
      </div>

      <div class="row">
         <div class="col-lg-4"></div>
      </div>
      <div class="testimonial-slider-wrap">
         <div class="testimonial-slider">
            <div class="item">
               <div class="testimonial">
                  <img src="{{ asset('landingtemplate') }}/images/person_1-min.jpg" alt="Image"
                     class="img-fluid rounded-circle w-25 mb-4" />
                  <div class="rate">
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                  </div>
                  <h3 class="h5 text-primary mb-4">Nandar Kusandar</h3>
                  <blockquote>
                     <p>
                        &ldquo;Saya sangat bahagia dengan keputusan membeli rumah di Arum Jaya Property. Fasilitas yang
                        disediakan, seperti keamanan 24
                        jam, kolam renang, dan lapangan tenis, membuat hidup saya dan keluarga lebih nyaman dan
                        menyenangkan. Selain itu,
                        lokasinya yang strategis dekat dengan pusat perbelanjaan dan sekolah membuat segala kebutuhan
                        kami terpenuhi dengan
                        mudah. Terima kasih Arum Jaya Property atas rumah yang indah ini!&rdquo;
                     </p>
                  </blockquote>
                  <p class="text-black-50">Designer, Co-founder</p>
               </div>
            </div>

            <div class="item">
               <div class="testimonial">
                  <img src="{{ asset('landingtemplate') }}/images/person_2-min.jpg" alt="Image"
                     class="img-fluid rounded-circle w-25 mb-4" />
                  <div class="rate">
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                  </div>
                  <h3 class="h5 text-primary mb-4">Ibrahim Adjie</h3>
                  <blockquote>
                     <p>
                        &ldquo;Saya sangat senang dengan pembelian rumah saya di Arum Jaya Property. Sistem keamanan
                        yang canggih memberikan saya
                        ketenangan pikiran dan saya merasa aman di rumah saya. Selain itu, lokasinya yang strategis
                        sangat memudahkan saya untuk
                        beraktivitas sehari-hari dan akses ke pusat kota sangat mudah. Terima kasih Arum Jaya
                        Property!.&rdquo;
                     </p>
                  </blockquote>
               </div>
            </div>

            <div class="item">
               <div class="testimonial">
                  <img src="{{ asset('landingtemplate') }}/images/person_3-min.jpg" alt="Image"
                     class="img-fluid rounded-circle w-25 mb-4" />
                  <div class="rate">
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                  </div>
                  <h3 class="h5 text-primary mb-4">Rizki Ramadhan</h3>
                  <blockquote>
                     <p>
                        &ldquo;Saya sangat merekomendasikan Arum Jaya Property untuk pembelian rumah. Fasilitas olahraga
                        yang disediakan sangat lengkap
                        dan memenuhi kebutuhan saya untuk hidup sehat dan aktif. Selain itu, lingkungan yang tenang dan
                        nyaman membuat saya
                        merasa betah di rumah saya. Terima kasih Arum Jaya Property!&rdquo;
                     </p>
                  </blockquote>
               </div>
            </div>

            <div class="item">
               <div class="testimonial">
                  <img src="{{ asset('landingtemplate') }}/images/person_4-min.jpg" alt="Image"
                     class="img-fluid rounded-circle w-25 mb-4" />
                  <div class="rate">
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                     <span class="icon-star text-warning"></span>
                  </div>
                  <h3 class="h5 text-primary mb-4">Marisa Nasution</h3>
                  <blockquote>
                     <p>
                        &ldquo;Saya sangat puas dengan pembelian rumah saya di Arum Jaya Property. Proses pembelian yang
                        mudah dan transparan membuat
                        saya merasa tenang dan percaya diri dalam membeli properti. Selain itu, pelayanan yang diberikan
                        oleh tim Arum Jaya
                        Property sangat baik dan responsif terhadap kebutuhan saya. Terima kasih Arum Jaya
                        Property!&rdquo;
                     </p>
                  </blockquote>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

<div class="section section-4 bg-light">
   <div class="container">
      <div class="row justify-content-center text-center mb-5">
         <div class="col-lg-5">
            <h2 class="font-weight-bold heading text-primary mb-4">
               Ayo kita mencari rumah yang sempurna untukmu.
            </h2>
         </div>
      </div>
      <div class="row justify-content-between mb-5">
         <div class="col-lg-7 mb-5 mb-lg-0 order-lg-2">
            <div class="img-about dots">
               <img src="{{ asset('landingtemplate') }}/images/bumar.jpg" alt="Image" class="img-fluid" />
            </div>
         </div>
         <div class="col-lg-4">
            <div class="d-flex feature-h">
               <span class="wrap-icon me-3">
                  <span class="icon-home2"></span>
               </span>
               <div class="feature-text">
                  <h3 class="heading">Kualitas rumah</h3>
                  <p class="text-black-50">
                     Dapatkan Kualitas Rumah yang terbaik yang pernah anda dapatkan
                  </p>
               </div>
            </div>

            <div class="d-flex feature-h">
               <span class="wrap-icon me-3">
                  <span class="icon-person"></span>
               </span>
               <div class="feature-text">
                  <h3 class="heading">Layanan Agent</h3>
                  <p class="text-black-50">
                     Temukan rumah impianmu dengan mudah bersama Layanan Agent!
                  </p>
               </div>
            </div>

            <div class="d-flex feature-h">
               <span class="wrap-icon me-3">
                  <span class="icon-security"></span>
               </span>
               <div class="feature-text">
                  <h3 class="heading">Kemanan 24Jam</h3>
                  <p class="text-black-50">
                     Arum Jaya Property memiliki sistem keamanan yang canggih dan dilengkapi dengan CCTV 24 jam untuk
                     memastikan keamanan dan
                     kenyamanan penghuni.
                  </p>
               </div>
            </div>
         </div>
      </div>
      <div class="row section-counter mt-5">
         <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="300">
            <div class="counter-wrap mb-5 mb-lg-0">
               <span class="number"><span class="countup text-primary">1000</span></span>
               <span class="caption text-black-50"># of Buy Properties</span>
            </div>
         </div>
         <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="400">
            <div class="counter-wrap mb-5 mb-lg-0">
               <span class="number"><span class="countup text-primary">800</span></span>
               <span class="caption text-black-50"># of Sell Properties</span>
            </div>
         </div>
         <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="500">
            <div class="counter-wrap mb-5 mb-lg-0">
               <span class="number"><span class="countup text-primary">300</span></span>
               <span class="caption text-black-50"># of All Properties</span>
            </div>
         </div>
         <div class="col-6 col-sm-6 col-md-6 col-lg-3" data-aos="fade-up" data-aos-delay="600">
            <div class="counter-wrap mb-5 mb-lg-0">
               <span class="number"><span class="countup text-primary">100</span></span>
               <span class="caption text-black-50"># of Agents</span>
            </div>
         </div>
      </div>
   </div>
</div>

<div class="section">
   <div class="row justify-content-center footer-cta" data-aos="fade-up">
      <div class="col-lg-7 mx-auto text-center">
         <h2 class="mb-4">Buat jadwal untuk visitasi ditemani agent kami</h2>
         <p>
            <a href="{{ route('visitasicreate') }}" target="_blank" class="btn btn-primary text-white py-3 px-4">Buat
               Jadwal</a>
         </p>
      </div>
      <!-- /.col-lg-7 -->
   </div>
   <!-- /.row -->
</div>

<div class="section section-5 bg-light">
   <div class="container">
      <div class="row justify-content-center text-center mb-5">
         <div class="col-lg-6 mb-5">
            <h2 class="font-weight-bold heading text-primary mb-4">
               Agent Kami
            </h2>
            <p class="text-black-50">
               Temukan rumah impianmu bersama agen properti terbaik kami! Dengan pengalaman dan pengetahuan yang luas
               tentang pasar
               properti, agen kami siap membantu kamu dalam mencari rumah yang sesuai dengan kebutuhan dan preferensimu.
               Dapatkan
               pelayanan terbaik dan informasi lengkap tentang properti yang tersedia di daerah yang kamu inginkan. Ayo,
               hubungi agen
               kami sekarang dan temukan rumah yang sempurna untukmu
            </p>
         </div>
      </div>
      <div class="row">
         @foreach ($agents as $agent)
         <div class="col-sm-6 col-md-6 col-lg-4 mb-5 mb-lg-0">
            <div class="h-100 person">
               <img src="{{ asset('landingtemplate') }}/images/person_1-min.jpg" alt="Image" class="img-fluid" />

               <div class="person-contents">
                  <h2 class="mb-0"><a href="#">{{ ucwords($agent->name) }}</a></h2>
                  <span class="meta d-block mb-3">Arum Jaya Property Agent</span>
               </div>
            </div>
         </div>
         @endforeach
      </div>
   </div>
</div>
@endsection