@extends('layouts.app')

@section('content')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Exam Timetable<span style="color:blue;">({{ $getStudent->name}}  {{ $getStudent->last_name}})</span></h1>
          </div>
        </div>
      </div>
    </section>
    <div class="row">
          
          <div class="col-md-12">
            <!-- general form elements -->
            @include('_message')

           
            

             @foreach($getRecord as $value)
           
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">{{ $value['name'] }}</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body p-0">
                <table class="table table-striped">
                 <thead>
                 <tr>
                      
                      <th>Subject Name</th>
                      <th>Day</th>
                      <th>Exam Date</th>
                      <th>Start Time</th>
                      <th>End Time</th>
                      <th>Room Number</th>
                      <th>Full Marks</th>
                      <th>Passing Marks</th>
                      
                    </tr>  
                </thead>
                  <tbody>
                    @foreach($value['exam'] as $valueS)
                    <tr>

                      <td>{{ $valueS['subject_name'] }}--{{ $valueS['subject_type'] }} </td> 
                      <td>{{date('l', strtotime($valueS['exam_date'])) }} </td> 
                      <td>{{date('d-m-Y', strtotime($valueS['exam_date'])) }} </td> 
                      <td>{{date('h:i A', strtotime($valueS['start_time'])) }} </td> 
                      <td>{{date('h:i A', strtotime($valueS['end_time'])) }} </td> 
                      <td>{{ $valueS['room_number'] }} </td> 
                      <td>{{ $valueS['full_marks'] }} </td> 
                      <td>{{ $valueS['passing_marks'] }} </td> 
                    </tr>
                   
                    
                  @endforeach
                  </tbody>

                </table>
              </div>
            </div>
          
           @endforeach
            <!-- /.card -->

          </div>
          </form>
       
             
        </div>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
         
          <!-- /.col -->
          <div class="col-md-12">
            
            
          
          
          
          
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
 
 
  @endsection


  