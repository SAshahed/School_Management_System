@extends('layouts.app')

@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Parent Student List ({{ $getParent->name}} {{$getParent->last_name}})</h1>
          </div>
         

        </div>
      </div>
    </section>
    <div class="row">
    <div class="col-md-12">
            <!-- general form elements -->
            <div class="card">
              <div class="card-header">
                <h1 class="card-title">Search Student</h1>

              </div>
              <form method="get" Action="">
              
                <div class="card-body">
                  <div class="row">
                  <div class="form-group col-md-2">
                    <label>Student ID</label>
                    <input type="text" class="form-control" value="{{ Request::get('id') }}" name="id"  placeholder="Student ID">
                  </div>
                  <div class="form-group col-md-2">
                    <label>Name</label>
                    <input type="text" class="form-control" value="{{ Request::get('name') }}" name="name"  placeholder="Name">
                  </div>
                  <div class="form-group col-md-2">
                    <label>Last Name</label>
                    <input type="text" class="form-control" value="{{ Request::get('last_name') }}" name="last_name"  placeholder="Last Name">
                  </div>
                  <div class="form-group col-md-2">
                    <label>Email </label>
                    <input type="text" class="form-control" name="email" value="{{ Request::get('email') }}"  placeholder="Email">
                   
                  </div>
                  
                 
                  
                  <div class="form-group col-md-3">
                    <button class="btn btn-primary" type="submit" style="margin-top:30px;">Search </button>
                    <a href="{{ url('admin/parent/my_student/' .$parent_id) }}" class="btn btn-success" type="submit" style="margin-top:30px;">Reset </a>
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
    <section class="content" >
      <div class="container-fluid" >
        <div class="row" >
         
          <!-- /.col -->
          <div class="col-md-12"  >
            
            @include('_message')


      @if(!empty($getSearchStudent))
          
            <div class="card">
              <div class="card-header" >
                <h3 class="card-title">Student List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Profile Pic</th>
                      <th>Student Name</th>
                      <th>Email</th>
                      <th>Parent Name</th>
                      <th>Created Date</th>
                      <th>Action</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                  @foreach($getSearchStudent as $value)
                     <tr>
                        <td>{{ $value->id }}</td>
                        <td>
                          @if(!empty($value->getProfile()))
                          <img src="{{ $value->getProfile() }}" style="height:50px; width:50px; border-radius: 50px;">
                          @endif
                      </td>
                        <td>{{ $value->name }} {{ $value->last_name }}</td>
                        <td>{{ $value->email }} </td>
                        <td> {{ $value->parent_name }} </td>
                        
  
                        <td>{{ date('d-m-y H:i A',strtotime ($value->created_at)) }} </td>
                        <td style="min-width: 150px;">
                          <a href="{{ url('admin/parent/assign_student_parent/' .$value->id. '/'.$parent_id) }}" class="btn btn-primary btn-sm">Add Student to Parent</a>
                          
                        </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
                <div style="padding:10px; float:right;">
                
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
   
   @endif      
            <div class="card">
              <div class="card-header" >
                <h3 class="card-title">Parent Student List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
              <table class="table table-striped">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Profile Pic</th>
                      <th>Student Name</th>
                      <th>Email</th>
                      <th>Parent Name</th>
                      <th>Created Date</th>
                      <th>Action</th>
                      
                    </tr>
                  </thead>
                  <tbody>
                  @foreach($getRecord as $value)
                     <tr>
                        <td>{{ $value->id }}</td>
                        <td>
                          @if(!empty($value->getProfile()))
                          <img src="{{ $value->getProfile() }}" style="height:50px; width:50px; border-radius: 50px;">
                          @endif
                      </td>
                        <td>{{ $value->name }} {{ $value->last_name }}</td>
                        <td>{{ $value->email }} </td>
                        <td> {{ $value->parent_name }} </td>
                        
  
                        <td>{{ date('d-m-y H:i A',strtotime ($value->created_at)) }} </td>
                        <td style="min-width: 150px;">
                          <a href="{{ url('admin/parent/assign_student_parent_delete/' .$value->id) }}" 
                          class="btn btn-danger btn-sm">Delete</a>
                          
                        </td>
                    </tr>
                    @endforeach
                  </tbody>
                </table>
                <div style="padding:10px; float:right;">
                
                </div>
              </div>
              <!-- /.card-body -->
            </div> 
            


          </div>
          <!-- /.col -->
        </div>
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
 
 
  @endsection
