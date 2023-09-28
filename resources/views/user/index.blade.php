@extends('layouts.app')
@section('content')
<div class="container">
   <x-alert></x-alert>
   <div class="card">
      <div class="card-header bg-white d-flex align-items-center justify-content-between">
         <h4 class="card-title text-capitalize">data users</h4>
         <a href="{{ route('user.create') }}" class="btn btn-dark btn-sm text-capitalize rounded-0">create</a>
      </div>
      <div class="card-body">
         <table class="table table-sm" id="example">
            <thead>
               <tr>
                  <th class="text-uppercase">no</th>
                  <th class="text-uppercase">name</th>
                  <th class="text-uppercase">email</th>
                  <th class="text-uppercase">role</th>
                  <th class="text-uppercase">aksi</th>
               </tr>
            </thead>
            <tbody>
               @foreach ($users as $index => $user)
               <tr>
                  <td>{{ $index + 1 }}</td>
                  <td>{{ ucwords($user->name) }}</td>
                  <td>{{ $user->email }}</td>
                  <td>{{ $user->role->role }}</td>
                  <td class="d-flex align-items-center gap-2">
                     <a href="{{ route('user.edit',$user->id) }}" class="btn btn-success text-capitalize">edit</a>
                     <form action="{{ route('user.destroy', $user->id) }}" method="post">
                        @csrf
                        @method('delete')
                        <button type="submit" class="btn btn-danger text-capitalize">hapus</button>
                     </form>
                  </td>
               </tr>
               @endforeach
            </tbody>
         </table>
      </div>
   </div>
</div>
@endsection