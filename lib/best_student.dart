import 'package:dart_application/score.dart';

void bestStudent(List<StudentScore> studentsInfo) {
  // 제일 점수가 높은 우수생 출력
  StudentScore bestStudent = studentsInfo[0];

  // 동점자 동시 출력 조건(추가)
  for (int i = 1; i < studentsInfo.length; i++) {
    if (bestStudent.studentScore <= studentsInfo[i].studentScore &&
        bestStudent.studentName != studentsInfo[i].studentName) {
      bestStudent = studentsInfo[i];
      print(
        '우수생: ${bestStudent.studentName} ( 평균 점수: ${bestStudent.studentScore})',
      );
    }
  }
  if (bestStudent == studentsInfo[0]) {
    print(
      '우수생: ${bestStudent.studentName} ( 평균 점수: ${bestStudent.studentScore})',
    );
  }
}
