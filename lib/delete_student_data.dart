import 'dart:io';

import 'package:dart_application/score.dart';

void deleteStudentData(String filePath, List<StudentScore> studentsInfo) {
  print('제거할 학생 이름을 입력해 주세요.');
  stdout.write('> 학생 이름: ');
  String? name = stdin.readLineSync();

  try {
    while (true) {
      StudentScore deleteStudentName = studentsInfo.firstWhere(
        (match) => match.studentName == name,
      );

      if (name == deleteStudentName.studentName) {
        name = '${deleteStudentName.studentName}*';
        print(name);
      } else {
        break;
      }
    }

    /*final file = File(filePath);
    String content = '';

    for (var deleteStudent in studentsInfo) {
      content += '${deleteStudent.studentName},${deleteStudent.studentScore}\n';
    }
    file.writeAsStringSync(content);
    print('학생 정보가 삭제되었습니다.');*/
  } catch (e) {
    print("삭제에 실패했습니다: $e");
  }
}
