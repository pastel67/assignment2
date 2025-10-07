import 'dart:io';

import 'save_results.dart';

import 'score.dart';

void assignmenat(List<StudentScore> studentsInfo) {
  List<String> studentList = [];
  String content = '';

  for (int i = 0; i < studentsInfo.length; i++) {
    studentList.add(studentsInfo[i].student);
  }
  
  for (int i = 0; i < 3; i++) {
    stdout.write('\n어떤 학생의 통계를 확인하시겠습니까? ');
    String? input = stdin.readLineSync();

    switch (studentList.contains(input)) {
      case true:
        for (int i = 0; i < studentsInfo.length; i++) {
          if (studentsInfo[i].student == input) {
            content += '${studentsInfo[i].studentInfo()}\n';
            studentsInfo[i].showInfo();
          }
        }
        break;
      default:
        print('등록되지 않은 학생입니다. 다시 입력해주세요.');
        break;
    }
  }
  saveResults('result.txt', content);
}
