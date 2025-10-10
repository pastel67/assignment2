import 'dart:io';
import 'package:dart_application/load_student_data.dart';
import 'save_student_info.dart';
import 'score.dart';

void assignmenat1(List<StudentScore> studentsInfo) {
  String list = '';

  for (var student in studentList) {
    list += '$student, ';
  }

  while (true) {
    print('\n*등록된 학생 목록');
    print(list);
    stdout.write('\n어떤 학생의 통계를 확인하시겠습니까?\n> ');
    String? input = stdin.readLineSync();

    switch (studentList.contains(input)) {
      case true:
        for (int i = 0; i < studentsInfo.length; i++) {
          if (studentsInfo[i].studentName == input) {
            String content = '${studentsInfo[i].infomation()}\n';
            studentsInfo[i].showInfo();
            try {
              final file = File('result.txt');
              file.writeAsStringSync(content);
              print("저장이 완료되었습니다.\n");
            } catch (e) {
              print("저장에 실패했습니다: $e\n");
            }
            return;
          }
        }
      default:
        print('\n> 등록되지 않은 학생입니다. 다시 입력해주세요.');
        break;
    }
  }
}
