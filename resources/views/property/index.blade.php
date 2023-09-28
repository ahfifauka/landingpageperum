@extends('layouts.app')
@section('content')
<div class="container">
   <x-alert></x-alert>
   <div class="card">
      <div class="card-header bg-white d-flex align-items-center justify-content-between">
         <h4 class="card-title text-capitalize">data property</h4>
         <a href="{{ route('property.create') }}" class="btn btn-dark btn-sm text-capitalize">create</a>
      </div>
      <div class="card-body">
         <table class="table table-sm" id="example">
            <thead>
               <tr>
                  <th class="text-uppercase">no</th>
                  <th class="text-uppercase">tipe</th>
                  <th class="text-uppercase">harga</th>
                  <th class="text-uppercase">luas tanah</th>
                  <th class="text-uppercase">luas bangunan</th>
                  <th class="text-uppercase">kamar mandi</th>
                  <th class="text-uppercase">kamar tidur</th>
                  <th class="text-uppercase">gambar</th>
                  <th class="text-uppercase">opsi</th>
               </tr>
            </thead>
            <tbody>
               @foreach ($properties as $index => $property)
               <tr>
                  <td>{{ $index + 1 }}</td>
                  <td>{{ ucwords($property->tipe) }} <span class="d-block m-0 text-muted">{{ $property->lantai }}
                        lantai</span>
                  </td>
                  <td>Rp. {{ number_format($property->harga) }}</td>
                  <td>{{ number_format($property->lt) }} m<sup>2</sup> </td>
                  <td>{{ number_format($property->lb) }} m<sup>2</sup> </td>
                  <td>{{ number_format($property->km) }} Kamar Mandi</td>
                  <td>{{ number_format($property->kt) }} Kamar Tidur</td>
                  <td>
                     <img src="{{ asset('storage/property/'. $property->gambar) }}" alt="{{ $property->gambar }}"
                        class="img-fluid" style="width: 200px; aspect-ratio:1/1">
                  </td>
                  <td class="d-flex gap-2">
                     <a href="{{ route('property.edit',$property->id) }}"
                        class="btn btn-success text-capitalize">edit</a>
                     <form action="{{ route('property.destroy',$property->id) }}" method="post">
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