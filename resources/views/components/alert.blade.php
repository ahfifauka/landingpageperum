@if (session('success'))
<div class="alert alert-success">
    <h5 class="text-capitalize">{{ session('success') }}</h5>
</div>
@endif
@if (session('failed'))
<div class="alert alert-danger">
    <h5 class="text-capitalize">{{ session('failed') }}</h5>
</div>
@endif