import 'dart:io';
import 'package:dart_application/load_student_data.dart';
import 'package:dart_application/score.dart';

String inputStudentName(List<StudentScore> studentsInfo) {
  String studentName = '';
  String firstInput = '';
  while (true) {
    stdout.write('> 학생 이름: ');
    String input = stdin.readLineSync() ?? '';
  
    if (input == '') {
      print('다시 입력해 주세요.');
    }else {
      studentName = input;
      firstInput = input;
      break;
    }
  }
  int count = 1;
  while (true) {
    if(studentList.contains(studentName)){
      count++;
      studentName = '$firstInput($count)';
    }else{
    break;
    }
  }
  
  return studentName;
}
