@extends('layouts.app')
@section('content')
<div class="container">
   <x-alert></x-alert>
   <div class="card">
      <div class="card-header bg-white">
         <h4 class="card-title text-capitalize">data visitasi</h4>
      </div>
      <div class="card-body">
         <table class="table table-sm" id="example">
            <thead>
               <tr>
                  <th class="text-uppercase">no</th>
                  <th class="text-uppercase">nama</th>
                  <th class="text-uppercase">email</th>
                  <th class="text-uppercase">telepon</th>
                  <th class="text-uppercase">waktu visitasi</th>
                  <th class="text-uppercase">agent</th>
                  <th class="text-uppercase">status</th>
                  <th class="text-uppercase">Opsi</th>
               </tr>
            </thead>
            <tbody>
               @foreach ($visitasi as $index => $item)
               <tr>
                  <td>{{ $index + 1 }}</td>
                  <td>{{ ucwords($item->nama) }}</td>
                  <td>{{ $item->email }}</td>
                  <td>{{ $item->telepon }}</td>
                  <td>{{ $item->tgl_visitasi .":".$item->jam_visitasi}} </td>
                  <td>{{ ucwords($item->agent->name) }}</td>
                  <td>{{ ucwords($item->status) }}</td>
                  <td>
                     <form action="{{ route('visitasi.update',$item->id) }}" method="post">
                        @csrf
                        @method('put')
                        <button type="submit" {{ ($item->status == "selesai") ? 'disabled' : '' }} class="btn
                           btn-primary text-capitalize">selesai</button>
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