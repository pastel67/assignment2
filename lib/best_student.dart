import 'package:dart_application/score.dart';

void bestStudent(List<StudentScore> studentsInfo){

  StudentScore bestStudent = studentsInfo[0];

  for(int i = 1; i < studentsInfo.length; i++){

    if(bestStudent.score < studentsInfo[i].score){
      bestStudent = studentsInfo[i];
    }
  }
  print('우수생: ${bestStudent.student} ( 평균 점수: ${bestStudent.score})');
}