import 'dart:io';
import 'package:dart_application/best_student.dart';
import 'package:dart_application/score.dart';
import 'package:dart_application/total_score_average.dart';

void assignmenat2(List<StudentScore> studentsInfo) {


  while (true) {
    print('\n메뉴를 선택하세요.');
    print('1. 우수생 출력');
    print('2. 전체 평균 점수 출력');
    print('3. 종료\n');
    stdout.write('> 선택: ');
    String input = stdin.readLineSync() ?? '';

    switch (input) {
      case '1':
       bestStudent(studentsInfo);
      case '2':
       totalScoreAverage(studentsInfo);
      case '3':
        return;
    }
  }
}
