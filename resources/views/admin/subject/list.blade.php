@extends('layouts.app')

@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Subject Lists</h1>
          </div>
          <div class="col-sm-6" style="text-align:right;">
           <a href="{{ url('admin/subject/add') }}" class="btn-primary">Add New Subject</a>
          </div>

        </div>
      </div>
    </section>
    <div class="row">
          
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card">
              <div class="card-header">
                <h1 class="card-title">Search Subject</h1>

              </div>
              <form method="get" Action="">
              
                <div class="card-body">
                  <div class="row">
                  <div class="form-group col-md-3">
                    <label>Subject Name</label>
                    <input type="text" class="form-control" value="{{ Request::get('name') }}" name="name"  placeholder="Name">
                  </div>

                  <div class="form-group col-md-3">
                  <label>Status</label> 
                    <select class="form-control" name="type" >
                        <option value="">Select Type</option>
                        <option {{ (Request::get('type') =='Theory') ? 'selected':'' }} value="Theory">Theory</option>
                        <option {{ (Request::get('type') =='Practical') ? 'selected':'' }} value="Practical">Practical</option>

                     </select>
                    
                  </div>

                 
                  
                  <div class="form-group col-md-3">
                    <label>Date </label>
                    <input type="date" class="form-control" name="date" value="{{ Request::get('date') }}"  placeholder="date">
                   
                  </div>
                  <div class="form-group col-md-3">
                    <button class="btn btn-primary" type="submit" style="margin-top:30px;">Search </button>
                    <a href="{{ url('admin/subject/list')}}" class="btn btn-success" type="submit" style="margin-top:30px;">Reset </a>
                  </div>
                 </div>
                
                </div>
                <!-- /.card-body -->

                
              </form>
            </div>
            

          
           
            <!-- /.card -->

          </div>
        
        </div>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
         
          <!-- /.col -->
          <div class="col-md-12">
            
            
            @include('_message')
          
          
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Subject List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Subject Name</th>
                      <th>Subject Type</th>
                      <th>Status</th>
                      <th>Created BY</th>
                      <th>Created Date</th>
                      <th>Action</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                 


                
                    @foreach($getRecord as $value)
                    
                    <tr>
                      <td> {{ $value->id }}</td>
                      <td> {{ $value->name }}</td>
                      <td> {{ $value->type }}</td>
                      <td>
                         @if($value->status==0)
                         Active
                         @else
                         Inactive
                         @endif

                      </td>
                      <td> {{ $value->created_by_name }}</td>
                      <td>{{ date('d-m-y H:i A',strtotime ($value->created_at)) }} </td>
                      <td> 
                      <a href="{{ url('admin/subject/edit/' .$value->id) }}" class="btn btn-primary">Edit</a>
                          <a href="{{ url('admin/subject/delete/' .$value->id) }}" class="btn btn-danger">Delete</a> 
                      </td>

                    </tr>
                    @endforeach
                 
                    
                  </tbody>
                </table>
                <div style="padding:10px; float:right;">
                {!! $getRecord->appends(Illuminate\Support\Facades\Request::except('page'))->Links() !!}
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
 
 
  @endsection
