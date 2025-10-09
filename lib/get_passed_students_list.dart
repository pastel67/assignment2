import 'package:dart_application/score.dart';

void getPassedStudents(List<StudentScore> studentsInfo){
  print('\n합격 점수는 80점 이상 입니다.\n');
  print('<합격자 명단>');
  
  for(var passesStudent in studentsInfo){
    if(passesStudent.studentScore >= 80){
      print(passesStudent.studentName);
    }
  }
}