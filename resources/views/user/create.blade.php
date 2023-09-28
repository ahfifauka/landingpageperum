@extends('layouts.app')
@section('content')
<div class="container">
   <div class="card">
      <div class="card-header bg-white d-flex align-items-center justify-content-between">
         <h4 class="card-title text-capitalize">form user</h4>
         <a href="{{ route('user.index') }}" class="nav-link text-muted text-capitalize float-end">kembali</a>
      </div>
      <div class="card-body">
         <form action="{{ route('user.store') }}" method="post">
            @csrf

            <div class="form-group my-3">
               <label for="name" class="text-capitalize">name</label>
               <input type="text" name="name" id="name" class="form-control @error('name')
                  is-invalid
               @enderror" placeholder="masukan nama lengkap" value="{{ old('name') }}">
               @error('name')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="email" class="text-capitalize">email</label>
               <input type="email" name="email" id="email" class="form-control @error('email')
                      is-invalid
                  @enderror" placeholder="masukan email anda" value="{{ old('email') }}">
               @error('email')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="password" class="text-capitalize">password</label>
               <input type="password" name="password" id="password" class="form-control @error('password')
                      is-invalid
                  @enderror" placeholder="masukan password rahasia">
               @error('password')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="form-group my-3">
               <label for="password_confirmation" class="text-capitalize">password confirmation</label>
               <input type="password" name="password_confirmation" id="password_confirmation" class="form-control"
                  placeholder="masukan ulang password">
            </div>

            <div class="form-group my-3">
               <label for="role" class="text-capitalize">role</label>
               <select name="role_id" id="role_id" class="form-control @error('role_id')
                   is-invalid
               @enderror">
                  <option value="">Pilih Role</option>
                  @foreach ($roles as $role)
                  <option value="{{ $role->id }}">{{ ucwords($role->role) }}</option>
                  @endforeach
               </select>
               @error('role_id')
               <div class="invalid-feedback">{{ $message }}</div>
               @enderror
            </div>

            <div class="my-3">
               <button type="submit" class="btn btn-primary text-capitalize">save</button>
            </div>

         </form>
      </div>
   </div>
</div>
@endsection