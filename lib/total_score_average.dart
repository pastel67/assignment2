import 'dart:io';
import 'package:dart_application/score.dart';

void totalStudentScoreAverage(List<StudentScore> studentsInfo) {
  //전체 학생 점수 평균 계산
  double sumScore = 0;
   List<int >studentScoreList = studentsInfo.map((e) => e.studentScore).toList();
studentScoreList.reduce((a, b) => a + b );


  for (StudentScore studentInfo in studentsInfo) {
    sumScore += studentInfo.studentScore.toDouble();
  }
  double totalAverage = sumScore / studentsInfo.length;

  print('전체 평균 점수: ${totalAverage.toStringAsFixed(2)}');

  // 평균점 이상인 학생 목록 출력(추가기능)
  while (true) {
    stdout.write('>평균점 이상의 학생 목록을 보시겠습니까?(y/n) :');
    String? input = stdin.readLineSync();

    switch (input) {
      case 'y'||'Y':
        print('\n<전체평균 점수 이상 학생>');

        for (var passesStudent in studentsInfo) {
          if (passesStudent.studentScore >= totalAverage) {
            print(passesStudent.studentName);
          }
        }
        return;
      case 'n'||'N':
        return;
      default:
        print("'y/n'로 입력해 주세요.");
    }
  }
}
