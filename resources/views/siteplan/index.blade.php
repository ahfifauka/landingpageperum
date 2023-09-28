@extends('layouts.app')
@section('content')
<div class="container">
   <x-alert></x-alert>
   <div class="card">
      <div class="card-header d-flex align-items-center justify-content-between">
         <h4 class="card-title text-capitalize">site plan</h4>
         <a href="{{ route('siteplan.create') }}" class="btn btn-primary text-capitalize">ganti siteplan</a>
      </div>
      <div class="card-body">
         <img src="{{ asset('storage/siteplan/'. $sitePlan->siteplan) }}" alt="">
      </div>
   </div>
</div>
@endsection