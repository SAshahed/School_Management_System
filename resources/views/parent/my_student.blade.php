@extends('layouts.app')

@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1> Student List </h1>
          </div>
         

        </div>
      </div>
    </section>
    
    <!-- Main content -->
    <section class="content" >
      <div class="container-fluid" >
        <div class="row" >
         
          <!-- /.col -->
          <div class="col-md-12"  >
            
            @include('_message')


     
            <div class="card">
              <div class="card-header" >
                <h3 class="card-title">Student List</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0" style="overflow: auto;">
              <table class="table table-striped">
                  <thead>
                    <tr>
                      
                      <th>Profile Pic</th>
                      <th>Student Name</th>
                     
                      <th>Email</th>
                      <th>Admission Number</th>
                      <th>Roll Number</th>
                      <th>Class</th>
                      <th>Gender</th>
                      <th>Date of Birth</th>
                      <th>Caste</th>
                      <th>Religion</th>
                      <th>Mobile</th>
                      <th>Admission Date</th>
                      <th>Blood Group</th>
                      <th>Height</th>
                      <th>Weight</th>
                     
                      <th>Created Date</th>
                      <th>Action</th>
                     
                      
                    </tr>
                  </thead>
                  <tbody>
                  @foreach($getRecord as $value)
                     <tr>
                        
                        <td>
                          @if(!empty($value->getProfile()))
                          <img src="{{ $value->getProfile() }}" style="height:50px; width:50px; border-radius: 50px;">
                          @endif
                      </td>
                        <td>{{ $value->name }} {{ $value->last_name }}</td>
                       
                        <td>{{ $value->email }} </td>
                        <td>{{ $value->admission_number }} </td>
                        <td>{{ $value->roll_number }} </td>
                        <td>{{ $value->class_name }} </td>
                        <td>{{ $value->gender }} </td>
                        <td>
                          @if(!empty($value->date_of_birth))
                           {{ date('d-m-Y', strtotime($value->date_of_birth)) }}
                          @endif
                      </td>
                        <td>{{ $value->caste }} </td>
                        <td>{{ $value->religion }} </td>
                        <td>{{ $value->mobile_number }} </td>
                        <td> @if(!empty($value->admission_date))
                           {{ date('d-m-Y', strtotime($value->admission_date)) }}
                          @endif 
                        </td>
                        <td>{{ $value->blood_group }} </td>
                        <td>{{ $value->height }} </td>
                        <td>{{ $value->weight }} </td>
                       

                        <td>{{ date('d-m-y H:i A',strtotime ($value->created_at)) }} </td>
                        <td style="width: 300px;"> 
                          <a class="btn btn-success btn-sm" href="{{ url('parent/my_student/subject/' .$value->id) }}"> Subject </a>
                          <a class="btn btn-primary btn-sm" href="{{ url('parent/my_student/exam_timetable/' .$value->id) }}"> Exam Timetable </a>
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
