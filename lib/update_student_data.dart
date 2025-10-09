import 'dart:io';
import 'package:dart_application/score.dart';

void updateStudentData(String filePath, List<StudentScore> studentsInfo) {
  String name;
  print('\n등록할 학생의 이름을 입력해주세요.');
  while (true) {
    stdout.write('> 학생 이름: ');
    String input = stdin.readLineSync() ?? '';
    if (input == '') {
      print('다시 입력해 주세요.');
    } else {
      name = input;
      break;
    }
  }
  for (StudentScore student in studentsInfo) {
    if (name == student.studentName) {
      name = '${student.studentName}*';
    }
  }
  
  int score;
  while (true) {
    stdout.write('> 학생 점수: ');
    String input = stdin.readLineSync() ?? '';

    if (input == '') {
      print('다시 입력해 주세요.');
    } else if (int.parse(input) > 100) {
      print('최고 점수는 100점 입니다. 다시 입력해 주세요.');
    } else {
      score = int.parse(input);
      break;
    }
  }

  studentsInfo.add(StudentScore(name, score));

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
