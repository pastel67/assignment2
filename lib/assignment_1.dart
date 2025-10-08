import 'dart:io';
import 'package:dart_application/load_student_data.dart';
import 'save_results.dart';
import 'score.dart';

void assignmenat(List<StudentScore> studentsInfo) {
  String content = '';
  String list = '';

  for (var student in studentList) {
    list += '$student, ';
  }

  for (int i = 0; i < 3; i++) {
    print('\n*등록된 학생 목록');
    print(list);
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
        print('\n> 등록되지 않은 학생입니다. 다시 입력해주세요.');
        break;
    }
  }
  saveResults('result.txt', content);
}
