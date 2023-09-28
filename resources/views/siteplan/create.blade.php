@extends('layouts.app')
@section('content')
<div class="container">
   <div class="card">
      <div class="card-header d-flex align-items-center justify-content-between">
         <h4 class="card-title text-capitalize">site plan</h4>
         <a href="{{ route('siteplan.index') }}" class="nav-link text-capitalize">kembali</a>
      </div>
      <div class="card-body">
         <form action="{{ route('siteplan.store') }}" method="post" enctype="multipart/form-data">
            @csrf

            <div class="form-group my-3">
               <label for="siteplan" class="text-capitalize">siteplan</label>
               <input type="file" name="siteplan" id="siteplan" class="form-control @error('siteplan')
                   is-invalid
               @enderror">
               @error('siteplan')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <button type="submit" class="btn btn-primary text-capitalize my-3">simpan</button>

         </form>
      </div>
   </div>
</div>
@endsection