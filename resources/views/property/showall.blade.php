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
            <h1 class="heading" data-aos="fade-up">
               Temukan rumah yang cocok denganmu bersama kami!
            </h1>
         </div>
      </div>
   </div>
</div>
<div class="section">
   <div class="container">
      @foreach ($properties as $index => $item)
      <div class="row justify-content-between " style="margin: 100px 0">
         <div class="col-lg-7 mb-5 mb-lg-0 {{ ($index % 2 == 0) ? 'order-lg-2' :'' }} ">
            <div class="img-about dots">
               <img src="{{ asset('storage/property/'. $item->gambar) }}" alt="Image" class="img-fluid"
                  style="width: 600px; aspect-ratio:1/1; object-fit: cover; object-position: center " />
            </div>
         </div>
         <div class="col-lg-4">
            <div class="d-flex feature-h">
               <span class="wrap-icon me-3">
                  <span class="icon-home2"></span>
               </span>
               <div class="feature-text">
                  <h3 class="heading">{{ ucwords($item->tipe) }} </h3>
                  <p class="text-black-50">
                     {{ ucwords($item->tipe) }} tipe {{ $item->lb .'/' . $item->lt }} memiliki {{ $item->lantai }}
                     lantai
                     dengan {{ $item->kt }} kamar tidur,
                     {{ $item->km }} kamar mandi
                  </p>
               </div>
            </div>
         </div>
      </div>
      @endforeach
   </div>
</div>
</div>
@endsection