<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ExamModel;
use App\Models\ClassModel;
use App\Models\ClassSubjectModel;
use App\Models\MarksRegisterModel;

use App\Models\ExamScheduleModel;
use App\Models\AssignClassTeacherModel;
use App\Models\User;

use Auth;

class ExaminationsController extends Controller
{

    public function exam_list()
    {
        $data['getRecord'] = ExamModel::getRecord();
        $data['header_title'] = "Exam_List";
        return view('admin.examinations.exam.list',$data);
    }

    public function exam_add()
    {
       
        $data['header_title'] = "Add New Exam";
        return view('admin.examinations.exam.add',$data);
    }

    public function exam_insert(Request $request)
    {
      
       $exam = new ExamModel;
       $exam->name = trim($request->name);
       $exam->note = trim($request->note);
       $exam->created_by = Auth::user()->id;
       $exam->save();

        return redirect('admin/examinations/exam/list')->with('success',"Exam info Successfully Added");
    } 
    public function exam_edit($id)
    {
        $data['getRecord'] = ExamModel::getSingle($id);

        if(!empty($data['getRecord']))
        {
            $data['header_title'] = "Edit Exam";
            return view('admin.examinations.exam.edit',$data);
        }
        else 
        {
            abort(404);
        }    
       
    }

    public function exam_update($id, Request $request)
    {
      
       $exam = ExamModel::getSingle($id);
       $exam->name = trim($request->name);
       $exam->note = trim($request->note);
       $exam->save();

        return redirect('admin/examinations/exam/list')->with('success',"Exam info Successfully Updated");
    } 

    public function exam_delete($id)
    {
        $getRecord = ExamModel::getSingle($id);

        if(!empty($getRecord))
        {
            $getRecord->is_delete =1;
            $getRecord->save();
            return redirect()->back()->with('success',"Exam info Successfully Deleted");
        }
        else 
        {
            abort(404);
        }    
       

       
    }

    public function exam_schedule(Request $request)
    {
        $data['getClass'] = ClassModel::getClass();
        $data['getExam'] = ExamModel::getExam();
        
        $result = array();
        if(!empty($request->get('exam_id')) && !empty($request->get('class_id')))

        {
           $getSubject = ClassSubjectModel::MySubject($request->get('class_id')) ;
           foreach($getSubject as $value)
           {
            $dataS = array();
            $dataS['subject_id'] = $value->subject_id;
            $dataS['class_id'] = $value->class_id;
            $dataS['subject_name'] = $value->subject_name;
            $dataS['subject_type'] = $value->subject_type;

            $ExamSchedule = ExamScheduleModel::getRecordSingle($request->get('exam_id'), $request->get('class_id'),
            $value->subject_id);

            if(!empty($ExamSchedule))
            {
                $dataS['exam_date'] = $ExamSchedule->exam_date;
                $dataS['start_time'] = $ExamSchedule->start_time;
                $dataS['end_time'] = $ExamSchedule->end_time;
                $dataS['room_number'] = $ExamSchedule->room_number;
                $dataS['full_marks'] = $ExamSchedule->full_marks;
                $dataS['passing_marks'] = $ExamSchedule->passing_marks;
            }
            else 
            {
                $dataS['exam_date'] = '';
                $dataS['start_time'] = '';
                $dataS['end_time'] = '';
                $dataS['room_number'] = '';
                $dataS['full_marks'] = '';
                $dataS['passing_marks'] = '';
            }

            $result[] = $dataS;
           }
        }
          
          $data['getRecord'] = $result;



        $data['header_title'] = "Exam Schedule";
        return view('admin.examinations.exam_schedule',$data);
    }
    public function exam_schedule_insert(Request $request)
     {
        ExamScheduleModel::deleteRecord($request->exam_id, $request->class_id);

        if(!empty($request->schedule))
         {
            foreach($request->schedule as $schedule)
           {
             if(!empty($schedule['subject_id']) && !empty($schedule['exam_date']) && !empty($schedule['start_time']) 
                 && !empty($schedule['end_time']) && !empty($schedule['room_number']) && !empty($schedule['full_marks'])
                 && !empty($schedule['passing_marks']))
               {
                   $exam = new ExamScheduleModel;
                   $exam->exam_id = $request->exam_id;
                   $exam->class_id = $request->class_id;
                   $exam->subject_id = $schedule['subject_id'];
                   $exam->exam_date = $schedule['exam_date'];
                   $exam->start_time = $schedule['start_time'];
                   $exam->end_time = $schedule['end_time'];
                   $exam->room_number = $schedule['room_number'];
                   $exam->full_marks = $schedule['full_marks'];
                   $exam->passing_marks = $schedule['passing_marks'];
                   $exam->created_by = Auth::user()->id;
                   $exam->save();
                }
              
            }
           
        }

        return redirect()->back()->with('success',"Exam Schedule Successfully Added");
    }

    public function marks_register(Request $request)
    {
        $data['getClass'] = ClassModel::getClass();
        $data['getExam'] = ExamModel::getExam();

        if(!empty($request->get('exam_id')) && !empty($request->get('class_id')))
        {
           $data['getSubject'] = ExamScheduleModel::getSubject($request->get('exam_id'),$request->get('class_id'));
           $data['getStudent'] = user::getStudentClass($request->get('class_id'));
          
        }
        
        $data['header_title'] = "Marks Register";
        return view('admin.examinations.marks_register',$data);

    }

    public function submit_marks_register(Request $request)
    {
      if(!empty($request->mark))
       {
         foreach ($request->mark as $mark)
          {
            $class_work = !empty($mark['class_work']) ? $mark['class_work'] : 0;
            $home_work = !empty($mark['home_work']) ? $mark['home_work'] : 0;
            $test_work = !empty($mark['test_work']) ? $mark['test_work'] : 0;
            $attendance_mark = !empty($mark['attendance_mark']) ? $mark['attendance_mark'] : 0;
            $exam_mark = !empty($mark['exam_mark']) ? $mark['exam_mark'] : 0;
           
            $getMark = MarksRegisterModel::CheckAlreadyMark($request->student_id,$request->exam_id,
            $request->class_id, $mark['subject_id']);

            if(!empty($getMark))
            {
              $save = $getMark;
            

            }
            else 
            {
                $save               = new MarksRegisterModel;
                $save->created_by   = Auth::user()->id;
            } 
           
           
            $save->student_id       = $request->student_id;
            $save->exam_id          = $request->exam_id;
            $save->class_id         = $request->class_id;
            $save->subject_id       = $mark['subject_id'];
            $save->class_work       = $class_work;
            $save->home_work        = $home_work;
            $save->test_work        = $test_work;
            $save->attendance_mark  = $attendance_mark;
            $save->exam_mark        = $exam_mark;
            $save->save();
          }
          $json['message'] = "Marks Register successfully saved";
          echo json_encode($json);
       }
      
    }

    

    //Student Side 

    public function MyExamTimetable(Request $request)
    {
            $class_id = Auth::user()->class_id;
            $getExam = ExamScheduleModel::getExam($class_id);
            $result = array();
            foreach($getExam as $value)
            {
                $dataE = array();
                $dataE['name'] = $value->exam_name;
                $getExamTimetable = ExamScheduleModel::getExamTimetable($value->exam_id, $class_id);
                $resultS = array();
                foreach($getExamTimetable as $valueS)
                {
                    $dataS = array();
                    $dataS['subject_name'] = $valueS->subject_name;
                    $dataS['subject_type'] = $valueS->subject_type;
                    $dataS['exam_date'] = $valueS->exam_date;
                    $dataS['start_time'] = $valueS->start_time;
                    $dataS['end_time'] = $valueS->end_time;
                    $dataS['room_number'] = $valueS->room_number;
                    $dataS['full_marks'] = $valueS->full_marks;
                    $dataS['passing_marks'] = $valueS->passing_marks;
                    $resultS[] = $dataS;
                }
               
                $dataE['exam'] = $resultS;
                $result[] = $dataE;
                
            }
           // dd($result);
            $data['getRecord'] = $result;
            $data['header_title'] = "My Exam Timetable";
            return view('student.my_exam_timetable',$data);
    }

    // Teacher Side 

    public function MyExamTimetableTeacher()
    {
        $result = array();
        $getClass = AssignClassTeacherModel::getMyClassSubjectGroup(Auth::user()->id);
        foreach($getClass as $class)
        {
          $dataC = array();
          $dataC['class_name'] = $class->class_name;
          $getExam = ExamScheduleModel::getExam($class->class_id);
          $examArray = array();
          foreach($getExam as $exam)
          {
            $dataE = array();
            $dataE['exam_name'] = $exam->exam_name;
            $getExamTimetable = ExamScheduleModel::getExamTimetable($exam->exam_id, $class->class_id);
            $subjectArray = array();
            foreach($getExamTimetable as $valueS)
            {
                $dataS = array();
                $dataS['subject_name'] = $valueS->subject_name;
                $dataS['subject_type'] = $valueS->subject_type;
                $dataS['exam_date'] = $valueS->exam_date;
                $dataS['start_time'] = $valueS->start_time;
                $dataS['end_time'] = $valueS->end_time;
                $dataS['room_number'] = $valueS->room_number;
                $dataS['full_marks'] = $valueS->full_marks;
                $dataS['passing_marks'] = $valueS->passing_marks;
                $subjectArray[] = $dataS;
            }
            $dataE['subject'] = $subjectArray;
            $examArray[] = $dataE;
          }
          $dataC['exam'] = $examArray;
          $result[] = $dataC;
        }
        $data['getRecord'] = $result;
        $data['header_title'] = "My Exam Timetable";
        return view('teacher.my_exam_timetable',$data);
    }

     // Parent Side
    public function ParentMyExamTimetable($student_id)
    {
        $getStudent = User::getSingle($student_id);
        $class_id = $getStudent->class_id;
        $getExam = ExamScheduleModel::getExam($class_id);
        $result = array();
        foreach($getExam as $value)
        {
            $dataE = array();
            $dataE['name'] = $value->exam_name;
            $getExamTimetable = ExamScheduleModel::getExamTimetable($value->exam_id, $class_id);
            $resultS = array();
            foreach($getExamTimetable as $valueS)
            {
                $dataS = array();
                $dataS['subject_name'] = $valueS->subject_name;
                $dataS['subject_type'] = $valueS->subject_type;
                $dataS['exam_date'] = $valueS->exam_date;
                $dataS['start_time'] = $valueS->start_time;
                $dataS['end_time'] = $valueS->end_time;
                $dataS['room_number'] = $valueS->room_number;
                $dataS['full_marks'] = $valueS->full_marks;
                $dataS['passing_marks'] = $valueS->passing_marks;
                $resultS[] = $dataS;
            }
           
            $dataE['exam'] = $resultS;
            $result[] = $dataE;
            
        }
       // dd($result);
        $data['getRecord'] = $result;
        $data['header_title'] = "Exam Timetable";
        $data['getStudent'] = $getStudent;
        return view('parent.my_exam_timetable',$data);
       
    }
    
}

