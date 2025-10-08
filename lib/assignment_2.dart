import 'dart:io';
import 'package:dart_application/load_student_data.dart';
import 'package:dart_application/score.dart';

void assignmenat2(List<StudentScore> studentsInfo) {
  Map<String, int> studentScoreList = {};

  for (int i = 0; i < studentsInfo.length; i++) {
    studentScoreList.addAll({studentsInfo[i].student: i});
  }

  while (true) {
    print('\n메뉴를 선택하세요.');
    print('1. 등록된 학생 목록 확인');
    print('2. 우수생 출력');
    print('3. 전체 평균 점수 출력');
    print('4. 종료\n');
    stdout.write('> 선택: ');
    String input = stdin.readLineSync() ?? '';

    switch (input) {
      case '1':
        print(studentList);
      case '2':
        while (true) {
          stdout.write('\n이름을 입력해 주세요 : ');
          String? input = stdin.readLineSync();
          int? index = studentScoreList[input];

          if (index == null) {
            print('등로되지 않은 학생입니다.');
          } else {
          break;
          }
        }
      case '3':
        break;
      case '4':
        return;
    }
  }
}
