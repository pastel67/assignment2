import 'dart:io';

import 'package:dart_application/score.dart';

void deleteStudentData(String filePath, List<StudentScore> studentsInfo) {
  print('제거할 학생 이름을 입력해 주세요.');
  stdout.write('> 학생 이름: ');
  String? input = stdin.readLineSync();

  try {
    final file = File(filePath);
    String content = '';

    for (var newStudent in studentsInfo) {
      content += '${newStudent.studentName},${newStudent.studentScore}\n';
    }
    file.writeAsStringSync(content);
    print('학생 정보가 저장되었습니다.');
  } catch (e) {
    print("저장에 실패했습니다: $e");
  }
}
