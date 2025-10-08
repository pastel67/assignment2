import 'package:dart_application/score.dart';

void totalScoreAverage(List<StudentScore> studentsInfo) {
  
  double sumScore = 0;

  for (int i = 0; i < studentsInfo.length; i++) {
   sumScore += studentsInfo[i].studentScore.toDouble();
  }
  double totalAverage = sumScore / studentsInfo.length;

  print('전체 평균 점수: ${totalAverage.toStringAsFixed(2)}');
}
