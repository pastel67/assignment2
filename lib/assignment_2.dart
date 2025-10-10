import 'dart:io';
import 'package:dart_application/best_student.dart';
import 'package:dart_application/delete_student_data.dart';
import 'package:dart_application/load_student_data.dart';
import 'package:dart_application/new_student_data.dart';
import 'package:dart_application/score.dart';
import 'package:dart_application/total_score_average.dart';

void assignmenat2(List<StudentScore> studentsInfo) {
  while (true) {
    List<StudentScore> studentsInfo = [];

    studentsInfo = loadStudentData('students.txt');

    // 프로그램 메뉴 출력 및 실행
    print('\n메뉴를 선택하세요.');
    print('1. 우수생 출력');
    print('2. 전체 평균 점수 출력');
    print('3. 학생 데이터 등록');
    print('4. 학생 데이터 삭제');
    print('5. 이전 단계\n');
    stdout.write('> 선택: ');
    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        bestStudent(studentsInfo);
      case '2':
        totalScoreAverage(studentsInfo);
      case '3':
        newStudentData('students.txt', studentsInfo);
      case '4':
        deleteStudentData('students.txt', studentsInfo);
      case '5':
        return;
      default:
        print('잘못된 입력입니다. 다시 입력해주세요.');
    }
  }
}
