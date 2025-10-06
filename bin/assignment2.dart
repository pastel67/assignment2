import 'dart:io';
import 'package:assignment2/load_student_data.dart';
import 'package:assignment2/score.dart';

void main(List<String> arguments) {
  List<StudentScore> studentsInfo = [];
  List<String> studentList = [];

  studentsInfo = loadStudentData('students.txt');

  for (int i = 0; i < studentsInfo.length; i++) {
    studentList.add(studentsInfo[i].student);
  }
  print(studentList);
  

  while (true) {
    stdout.write('어떤 학생의 통계를 확인하시겠습니까? ');
    String? input = stdin.readLineSync();
 /*
      switch () {
        case true:
          
        default:
      }
    }*/
  }
}
