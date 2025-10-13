import 'dart:io';
import 'package:dart_application/best_student.dart';
import 'package:dart_application/delete_student_data.dart';
import 'package:dart_application/find_student_info.dart';
import 'package:dart_application/load_student_data.dart';
import 'package:dart_application/new_student_data.dart';
import 'package:dart_application/score.dart';
import 'package:dart_application/total_score_average.dart';

// 과제 2: 학생 정보 관리 프로그램
void assignmenat2(List<StudentScore> studentsInfo) {
  while (true) {
    List<StudentScore> studentsInfo = []; // while밖에 있으면 등록 및 삭제 후 목록이 반영이 안됨

    studentsInfo = loadStudentData('students.txt');// while밖에 있으면 등록 및 삭제 후 목록이 반영이 안됨

    // 프로그램 메뉴 출력 및 실행
    print('\n메뉴를 선택하세요.');
    print('1. 우수생 출력');
    print('2. 전체 평균 점수 출력');
    print('3. 학생 정보 검색');
    print('4. 학생 데이터 등록');
    print('5. 학생 데이터 삭제');
    print('6. 이전 단계');
    print('7. 프로그램 종료\n');
    stdout.write('> 선택: ');
    String? input = stdin.readLineSync();
    
    switch (input) {
      case '1':
        bestStudent(studentsInfo);
      case '2':
        totalStudentScoreAverage(studentsInfo);
      case '3':
        findStudentInfo(studentsInfo);
      case '4':
        newStudentData('students.txt', studentsInfo);
      case '5':
        deleteStudentData('students.txt', studentsInfo);
      case '6':
        return;
      case '7':
        exit(0);
      default:
        print('잘못된 입력입니다. 다시 입력해주세요.');
    }
  }
}
