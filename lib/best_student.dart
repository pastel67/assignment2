import 'package:dart_application/score.dart';

void bestStudent(List<StudentScore> studentsInfo) {
  print('');
  StudentScore bestStudent = studentsInfo[0];

  for (var student in studentsInfo) {
    if (bestStudent.studentScore <= student.studentScore) {
      bestStudent = student;
      print(
        '우수생: ${bestStudent.studentName} ( 평균 점수: ${bestStudent.studentScore})',
      );
    }
  }
}
