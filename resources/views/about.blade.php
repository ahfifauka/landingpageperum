@extends('layouts.landingtemplate')
@section('content')
<div class="hero page-inner overlay"
   style="background-image: url('{{ asset('landingtemplate/images/hero_bg_3.jpg') }}')">
   <div class="container">
      <div class="row justify-content-center align-items-center">
         <div class="col-lg-9 text-center mt-5">
            <h1 class="heading" data-aos="fade-up">About</h1>

            <nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
               <ol class="breadcrumb text-center justify-content-center">
                  <li class="breadcrumb-item"><a href="/">Home</a></li>
                  <li class="breadcrumb-item active text-white-50" aria-current="page">
                     About
                  </li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
</div>

<div class="section">
   <div class="container">
      <div class="row text-left mb-5">
         <div class="col-12">
            <h2 class="font-weight-bold heading text-primary mb-4">About Us</h2>
         </div>
         <div class="col-lg-6">
            <img src="{{ asset('landingtemplate/images/bumar.jpg') }}" alt="" class="img-fluid">
         </div>
         <div class="col-lg-6">
            <h2>Visi dan Misi</h2>
            <p>Visi kami adalah menjadi mitra terpercaya dalam memenuhi kebutuhan properti klien kami, sementara misi
               kami adalah
               memberikan layanan berkualitas tinggi, inovatif, dan berkelanjutan.</p>

            <h2>Tim Profesional</h2>
            <p>Kami memiliki tim yang terdiri dari ahli properti yang berpengalaman dan berkomitmen untuk memberikan
               pelayanan
               terbaik kepada klien kami. Dengan pengetahuan mendalam tentang pasar properti, kami siap membantu Anda
               dalam mencari,
               membeli, atau menjual properti.</p>

            <h2>Hubungi Kami</h2>
            <p>Jika Anda memiliki pertanyaan atau ingin berdiskusi tentang kebutuhan properti Anda, jangan ragu untuk
               menghubungi
               kami melalui telepon, email, atau kunjungi kantor kami yang terletak di Jalan Contoh No. 123, Kota,
               Provinsi.</p>
         </div>
      </div>
   </div>
</div>


<div class="section sec-testimonials bg-light">
   <div class="container">
      <div class="row mb-5 align-items-center">
         <div class="col-md-6">
            <h2 class="font-weight-bold heading text-primary mb-4 mb-md-0">
               Tim kami
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
                  <h3 class="h5 text-primary">James Smith</h3>
                  <p class="text-black-50">Designer, Co-founder</p>

                  <p>
                     Far far away, behind the word mountains, far from the
                     countries Vokalia and Consonantia, there live the blind texts.
                     Separated they live in Bookmarksgrove right at the coast of
                     the Semantics, a large language ocean.
                  </p>

                  <ul class="social list-unstyled list-inline dark-hover">
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-twitter"></span></a>
                     </li>
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-facebook"></span></a>
                     </li>
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-linkedin"></span></a>
                     </li>
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-instagram"></span></a>
                     </li>
                  </ul>
               </div>
            </div>

            <div class="item">
               <div class="testimonial">
                  <img src="{{ asset('landingtemplate') }}/images/person_2-min.jpg" alt="Image"
                     class="img-fluid rounded-circle w-25 mb-4" />
                  <h3 class="h5 text-primary">Carol Houston</h3>
                  <p class="text-black-50">Designer, Co-founder</p>

                  <p>
                     Far far away, behind the word mountains, far from the
                     countries Vokalia and Consonantia, there live the blind texts.
                     Separated they live in Bookmarksgrove right at the coast of
                     the Semantics, a large language ocean.
                  </p>

                  <ul class="social list-unstyled list-inline dark-hover">
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-twitter"></span></a>
                     </li>
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-facebook"></span></a>
                     </li>
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-linkedin"></span></a>
                     </li>
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-instagram"></span></a>
                     </li>
                  </ul>
               </div>
            </div>

            <div class="item">
               <div class="testimonial">
                  <img src="{{ asset('landingtemplate') }}/images/person_3-min.jpg" alt="Image"
                     class="img-fluid rounded-circle w-25 mb-4" />
                  <h3 class="h5 text-primary">Synthia Cameron</h3>
                  <p class="text-black-50">Designer, Co-founder</p>

                  <p>
                     Far far away, behind the word mountains, far from the
                     countries Vokalia and Consonantia, there live the blind texts.
                     Separated they live in Bookmarksgrove right at the coast of
                     the Semantics, a large language ocean.
                  </p>

                  <ul class="social list-unstyled list-inline dark-hover">
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-twitter"></span></a>
                     </li>
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-facebook"></span></a>
                     </li>
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-linkedin"></span></a>
                     </li>
                     <li class="list-inline-item">
                        <a href="#"><span class="icon-instagram"></span></a>
                     </li>
                  </ul>
               </div>
            </div>

         </div>
      </div>
   </div>
</div>
@endsection