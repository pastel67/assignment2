import 'dart:io';
import 'package:dart_application/best_student.dart';
import 'package:dart_application/load_student_data.dart';
import 'package:dart_application/score.dart';
import 'package:dart_application/total_score_average.dart';
import 'package:dart_application/upload_student_data.dart';

void assignmenat2(List<StudentScore> studentsInfo) {
  List<StudentScore> studentsInfo = [];

  studentsInfo = loadStudentData('students.txt');

  while (true) {
    print('\n메뉴를 선택하세요.');
    print('1. 우수생 출력');
    print('2. 전체 평균 점수 출력');
    print('3. 학생 데이터 등록');
    print('4. 학생 데이터 삭제');
    print('5. 이전 단계\n');
    stdout.write('> 선택: ');
    String? input = stdin.readLineSync();

    if (input == null) {
      print('다시 연결해주세요.');
    }
    switch (input) {
      case '1':
        bestStudent(studentsInfo);
      case '2':
        totalScoreAverage(studentsInfo);
      case '3':
        uploadStudentInfo('students.txt', studentsInfo);
      case '4':
      default:
        return;
    }
  }
}
