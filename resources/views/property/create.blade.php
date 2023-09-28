@extends('layouts.app')
@section('content')
<div class="container">
   <div class="card">
      <div class="card-header bg-white d-flex align-items-center justify-content-between">
         <h4 class="card-title text-capitalize">form property</h4>
         <a href="{{ route('property.index') }}" class="nav-link text-capitalize">kembali</a>
      </div>
      <div class="card-body">
         <form action="{{ route('property.store') }}" method="post" enctype="multipart/form-data">
            @csrf

            <div class="form-group my-3">
               <label for="tipe" class="text-capitalize">tipe</label>
               <input type="text" name="tipe" id="tipe" class="form-control @error('tipe')
                   is-invalid
               @enderror" placeholder="tipe rumah" value="{{ old('tipe') }}">
               @error('tipe')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="harga" class="text-capitalize">harga</label>
               <input type="number" name="harga" id="harga" class="form-control @error('harga')
                   is-invalid
               @enderror" placeholder="harga rumah" value="{{ old('harga') }}">
               @error('harga')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="lantai" class="text-capitalize">lantai</label>
               <input type="number" name="lantai" id="lantai" class="form-control @error('lantai')
                   is-invalid
               @enderror" placeholder="luas tanah " value="{{ old('lantai') }}">
               @error('lantai')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="lt" class="text-capitalize">luas tanah</label>
               <input type="number" name="lt" id="lt" class="form-control @error('lt')
                   is-invalid
               @enderror" placeholder="luas tanah " value="{{ old('lt') }}">
               @error('lt')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="lb" class="text-capitalize">luas bangunan</label>
               <input type="number" name="lb" id="lb" class="form-control @error('lb')
                   is-invalid
               @enderror" placeholder="luas bangunan " value="{{ old('lb') }}">
               @error('lb')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="km" class="text-capitalize">kamar mandi</label>
               <input type="number" name="km" id="km" class="form-control @error('km')
                   is-invalid
               @enderror" placeholder="jumlah kamar mandi" value="{{ old('km') }}">
               @error('km')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="kt" class="text-capitalize">kamar tidur</label>
               <input type="number" name="kt" id="kt" class="form-control @error('kt')
                   is-invalid
               @enderror" placeholder="luas tidur" value="{{ old('kt') }}">
               @error('kt')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="gambar" class="text-capitalize">gambar</label>
               <input type="file" name="gambar" id="gambar" class="form-control @error('gambar')
                  is-invalid
               @enderror">
               @error('gambar')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="my-3">
               <button type="submit" class="btn btn-primary text-capitalize">simpan</button>
            </div>

         </form>
      </div>
   </div>
</div>
@endsection