@if(!empty(session('error'))) 
 <div class="alert alert-danger " role="alert">
    {{ session('error') }} 
</div>
@endif

@if(!empty(session('success'))) 
 <div class="alert alert-success " role="alert">
    {{ session('success') }} 
</div>
@endif

@if(!empty(session('secondary'))) 
 <div class="alert alert-secondary " role="alert">
    {{ session('secondary') }} 
</div>
@endif

@if(!empty(session('primary'))) 
 <div class="alert alert-primary " role="alert">
    {{ session('primary') }} 
</div>
@endif