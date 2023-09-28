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

<div class="container py-5">
   <div class="row justify-content-center">
      <div class="col-6">
         <h1 class="text-capitalize text-dark mb-5">Buat jadwal bersama kami</h1>
         <form action="{{ route('visitasi.store') }}" method="post">
            @csrf

            <div class="form-group my-3">
               <label for="nama" class="text-capitalize">nama</label>
               <input type="text" name="nama" id="nama" class="form-control @error('nama')
                   is-invalid
               @enderror" placeholder="masukan nama anda" value="{{ old('nama') }}">
               @error('nama')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="email" class="text-capitalize">email</label>
               <input type="email" name="email" id="email" class="form-control @error('email')
                   is-invalid
               @enderror" placeholder="masukan kontak email anda" value="{{ old('email') }}">
               @error('email')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="telepon" class="text-capitalize">telepon</label>
               <input type="text" name="telepon" id="telepon" class="form-control @error('telepon')
                   is-invalid
               @enderror" placeholder="masukan kontak telepon anda" value="{{ old('telepon') }}">
               @error('telepon')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="agent_id" class="text-capitalize">Pilih Agent</label>
               <select name="agent_id" id="agent_id" class="form-control @error('agent_id')
                   is-invalid
               @enderror ">
                  <option value="">Pilih Agent Kami</option>
                  @foreach ($agents as $agent)
                  <option value="{{ $agent->id }}">{{ ucwords($agent->name) }}</option>
                  @endforeach
               </select>
               @error('agent_id')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="tgl_visitasi" class="text-capitalize">Tanggal visitasi</label>
               <input type="date" name="tgl_visitasi" id="tgl_visitasi" class="form-control @error('tgl_visitasi')
                   is-invalid
               @enderror">
               @error('tgl_visitasi')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="jam_visitasi" class="text-capitalize">Jam visitasi</label>
               <input type="time" name="jam_visitasi" id="jam_visitasi" class="form-control @error('jam_visitasi')
                   is-invalid
               @enderror">
               @error('jam_visitasi')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <button type="submit" class="btn btn-dark text-capitalize rounded-0 col-12">booking</button>

         </form>
      </div>
   </div>
</div>

@endsection