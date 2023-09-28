@extends('layouts.landingtemplate')
@section('content')
<div class="hero page-inner overlay"
   style="background-image: url('{{ asset('landingtemplate/images/hero_bg_3.jpg') }}')">
   <div class="container">
      <div class="row justify-content-center align-items-center">
         <div class="col-lg-9 text-center mt-5">
            <h1 class="heading" data-aos="fade-up">siteplan</h1>

            <nav aria-label="breadcrumb" data-aos="fade-up" data-aos-delay="200">
               <ol class="breadcrumb text-center justify-content-center">
                  <li class="breadcrumb-item"><a href="/">Home</a></li>
                  <li class="breadcrumb-item active text-white-50" aria-current="page">
                     Siteplan
                  </li>
               </ol>
            </nav>
         </div>
      </div>
   </div>
</div>
<section>
   <div class="container py-3 d-flex alin-item-center justify-content-center">
      <img src="{{ asset('storage/siteplan/'.$siteplan->siteplan) }}" alt="" class="img-fluid">
   </div>
</section>
@endsection