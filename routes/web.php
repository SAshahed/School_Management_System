<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\TeacherController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\ClassController;
use App\Http\Controllers\SubjectController;
use App\Http\Controllers\ClassSubjectController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ParentsController;
use App\Http\Controllers\ClassTimetableController;
use App\Http\Controllers\AssignClassTeacherController;
use App\Http\Controllers\ExaminationsController;
use App\Http\Controllers\CalendarController;













/* Route::get('/', function () {
    return view('welcome');
}); */

Route::get('/', [AuthController::class, 'login']) ;
Route::post('login', [AuthController::class, 'AuthLogin']);
Route::get('logout', [AuthController::class, 'logout']);
Route::get('forgot-password', [AuthController::class, 'forgotpassword']);
Route::post('forgot-password', [AuthController::class, 'PostForgotPassword']);
Route::get('reset/{token}', [AuthController::class, 'reset']);
Route::post('reset/{token}', [AuthController::class, 'PostReset']);


  


Route::get('admin/admin/list', function () {
    return view('admin.admin.list');
});


Route::group(['middleware' => 'admin'], function () {

   // User Url
    Route::get('admin/dashboard', [DashboardController::class, 'dashboard']);
    Route::get('admin/admin/list', [AdminController::class, 'list']);
    Route::get('admin/admin/add', [AdminController::class, 'add']);
    Route::post('admin/admin/add', [AdminController::class, 'insert']);
    Route::get('admin/admin/edit/{id}', [AdminController::class, 'edit']);
    Route::post('admin/admin/edit/{id}', [AdminController::class, 'update']);
    Route::get('admin/admin/delete/{id}', [AdminController::class, 'delete']);

    // Teacher
    Route::get('admin/teacher/list', [TeacherController::class, 'list']);
    Route::get('admin/teacher/add', [TeacherController::class, 'add']);
    Route::post('admin/teacher/add', [TeacherController::class, 'insert']);
    Route::get('admin/teacher/edit/{id}', [TeacherController::class, 'edit']);
    Route::post('admin/teacher/edit/{id}', [TeacherController::class, 'update']);
    Route::get('admin/teacher/delete/{id}', [TeacherController::class, 'delete']);

    //student
    Route::get('admin/student/list', [StudentController::class, 'list']);
    Route::get('admin/student/add', [StudentController::class, 'add']);
    Route::post('admin/student/add', [StudentController::class, 'insert']);
    Route::get('admin/student/edit/{id}', [StudentController::class, 'edit']);
    Route::post('admin/student/edit/{id}', [StudentController::class, 'update']);
    Route::get('admin/student/delete/{id}', [StudentController::class, 'delete']);

     //Parents
     Route::get('admin/parent/list', [ParentsController::class, 'list']);
     Route::get('admin/parent/add', [ParentsController::class, 'add']);
     Route::post('admin/parent/add', [ParentsController::class, 'insert']);
     Route::get('admin/parent/edit/{id}', [ParentsController::class, 'edit']);
     Route::post('admin/parent/edit/{id}', [ParentsController::class, 'update']);
     Route::get('admin/parent/delete/{id}', [ParentsController::class, 'delete']);
     Route::get('admin/parent/my_student/{id}', [ParentsController::class, 'myStudent']);
     Route::get('admin/parent/assign_student_parent/{student_id}/{parent_id}', [ParentsController::class, 'AssignStudentParent']);
     Route::get('admin/parent/assign_student_parent_delete/{student_id}', [ParentsController::class, 'AssignStudentParentDelete']);
     
     
    //class url
    Route::get('admin/class/list', [ClassController::class, 'list']);
    Route::get('admin/class/add', [ClassController::class, 'add']);
    Route::post('admin/class/add', [ClassController::class, 'insert']);

    Route::get('admin/class/edit/{id}', [ClassController::class, 'edit']);
    Route::post('admin/class/edit/{id}', [ClassController::class, 'update']);
    Route::get('admin/class/delete/{id}', [ClassController::class, 'delete']);

     //Subject url
     Route::get('admin/subject/list', [SubjectController::class, 'list']);
     Route::get('admin/subject/add', [SubjectController::class, 'add']);
     Route::post('admin/subject/add', [SubjectController::class, 'insert']);
     Route::get('admin/subject/edit/{id}', [SubjectController::class, 'edit']);
     Route::post('admin/subject/edit/{id}', [SubjectController::class, 'update']);
     Route::get('admin/subject/delete/{id}', [SubjectController::class, 'delete']);

     //assign_subject url

     Route::get('admin/assign_subject/list', [ClassSubjectController::class, 'list']);
     Route::get('admin/assign_subject/add', [ClassSubjectController::class, 'add']);
     Route::post('admin/assign_subject/add', [ClassSubjectController::class, 'insert']);
     Route::get('admin/assign_subject/edit/{id}', [ClassSubjectController::class, 'edit']);
     Route::post('admin/assign_subject/edit/{id}', [ClassSubjectController::class, 'update']);
     Route::get('admin/assign_subject/delete/{id}', [ClassSubjectController::class, 'delete']);

     Route::get('admin/assign_subject/edit_single/{id}', [ClassSubjectController::class, 'edit_single']);
     Route::post('admin/assign_subject/edit_single/{id}', [ClassSubjectController::class, 'update_single']);
    
     // Class Timetable
     Route::get('admin/class_timetable/list', [ClassTimetableController::class, 'list']);
     Route::post('admin/class_timetable/get_subject', [ClassTimetableController::class, 'get_subject']);
     Route::post('admin/class_timetable/add', [ClassTimetableController::class, 'insert_update']);
    
     
    // assign Class Teacher
     Route::get('admin/assign_class_teacher/list', [AssignClassTeacherController::class, 'list']);
     Route::get('admin/assign_class_teacher/add', [AssignClassTeacherController::class, 'add']);
     Route::post('admin/assign_class_teacher/add', [AssignClassTeacherController::class, 'insert']);
     Route::get('admin/assign_class_teacher/edit/{id}', [AssignClassTeacherController::class, 'edit']);
     Route::post('admin/assign_class_teacher/edit/{id}', [AssignClassTeacherController::class, 'update']);
     Route::get('admin/assign_class_teacher/edit_single/{id}', [AssignClassTeacherController::class, 'edit_single']);
     Route::post('admin/assign_class_teacher/edit_single/{id}', [AssignClassTeacherController::class, 'update_single']);
     Route::get('admin/assign_class_teacher/delete/{id}', [AssignClassTeacherController::class, 'delete']);


     Route::get('admin/account', [UserController::class, 'MyAccount']);
     Route::post('admin/account', [UserController::class, 'UpdateMyAccountAdmin']);

     //Change Password
     Route::get('admin/change_password', [UserController::class, 'change_password']);
     Route::post('admin/change_password', [UserController::class, 'update_change_password']);

     // Examinations 
    Route::get('admin/examinations/exam/list', [ExaminationsController::class, 'exam_list']);
    Route::get('admin/examinations/exam/add', [ExaminationsController::class, 'exam_add']);
    Route::post('admin/examinations/exam/add', [ExaminationsController::class, 'exam_insert']);
    Route::get('admin/examinations/exam/edit/{id}', [ExaminationsController::class, 'exam_edit']);
    Route::post('admin/examinations/exam/edit/{id}', [ExaminationsController::class, 'exam_update']);
    Route::get('admin/examinations/exam/delete/{id}', [ExaminationsController::class, 'exam_delete']);
    
    Route::get('admin/examinations/exam_schedule', [ExaminationsController::class, 'exam_schedule']);
    Route::post('admin/examinations/exam_schedule_insert', [ExaminationsController::class, 'exam_schedule_insert']);
    Route::get('admin/examinations/marks_register', [ExaminationsController::class, 'marks_register']);
    Route::post('admin/examinations/submit_marks_register', [ExaminationsController::class, 'submit_marks_register']);
    
    
});

Route::group(['middleware' => 'teacher'], function () {

    Route::get('teacher/dashboard', [DashboardController::class, 'dashboard']);

    Route::get('teacher/change_password', [UserController::class, 'change_password']);
    Route::post('teacher/change_password', [UserController::class, 'update_change_password']);
    Route::get('teacher/account', [UserController::class, 'MyAccount']);
    Route::post('teacher/account', [UserController::class, 'UpdateMyAccount']);
    Route::get('teacher/my_class_subject', [AssignClassTeacherController::class, 'MyClassSubject']);
    Route::get('teacher/my_student', [StudentController::class, 'MyStudent']);
    Route::get('teacher/my_class_subject/class_timetable/{class_id}/{subject_id}', [ClassTimetableController::class, 'MyTimetableTeacher']);
    Route::get('teacher/my_exam_timetable', [ExaminationsController::class, 'MyExamTimetableTeacher']);
    Route::get('teacher/my_calendar', [CalendarController::class, 'MyCalendarTeacher']);
    


});
Route::group(['middleware' => 'student'], function () {
    
    Route::get('student/dashboard', [DashboardController::class, 'dashboard']);
    Route::get('student/my_subject', [SubjectController::class, 'MySubject']);
    Route::get('student/my_timetable', [ClassTimetableController::class, 'MyTimetable']);
    Route::get('student/account', [UserController::class, 'MyAccount']);
    Route::post('student/account', [UserController::class, 'UpdateMyAccountStudent']);
    Route::get('student/change_password', [UserController::class, 'change_password']);
    Route::post('student/change_password', [UserController::class, 'update_change_password']);
    Route::get('student/my_calendar', [CalendarController::class, 'MyCalendar']);

    Route::get('student/my_exam_timetable', [ExaminationsController::class, 'MyExamTimetable']);

    
});
Route::group(['middleware' => 'parent'], function () {
    Route::get('parent/dashboard', [DashboardController::class, 'dashboard']);
    Route::get('parent/my_student', [ParentsController::class, 'MyStudentParent']);
    Route::get('parent/my_student/subject/{student_id}', [SubjectController::class, 'ParentStudentSubject']);
    Route::get('parent/my_student/exam_timetable/{student_id}', [ExaminationsController::class, 'ParentMyExamTimetable']);
    Route::get('parent/my_student/subject/class_timetable/{class_id}/{subject_id}/{student_id}', [ClassTimetableController::class, 'MyTimetableParent']);
    Route::get('parent/account', [UserController::class, 'MyAccount']);
    Route::post('parent/account', [UserController::class, 'UpdateMyAccountParent']);
    Route::get('parent/change_password', [UserController::class, 'change_password']);
    Route::post('parent/change_password', [UserController::class, 'update_change_password']);
    Route::get('parent/my_student/calendar/{student_id}', [CalendarController::class, 'MyCalendarParent']);
   

    
});

