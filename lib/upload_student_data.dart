import 'dart:io';

import 'package:dart_application/score.dart';

void uploadStudentInfo(String filePath, List<StudentScore> studentsInfo) {
  try {
    print('등록할 학생의 이름을 입력해주세요.');
    stdout.write('> 학생 이름: ');
    String? name = stdin.readLineSync();

    stdout.write('> 학생 점수: ');
    String input = stdin.readLineSync() ?? '';
    int score = int.parse(input);

    studentsInfo.add(StudentScore('$name', score));

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
