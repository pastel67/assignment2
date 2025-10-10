import 'dart:io';
import 'package:dart_application/load_student_data.dart';
import 'package:dart_application/score.dart';

void saveStudentData(String filePath, String content) {
  try {
    final file = File(filePath);
    file.writeAsStringSync(content);
    print("저장이 완료되었습니다.\n");
  } catch (e) {
    print("저장에 실패했습니다: $e\n");
  }
}


String saveStudentName(List<StudentScore> studentsInfo) {
  String studentName = '';
  String firstInput = '';
  while (true) {
    stdout.write('> 학생 이름: ');
    String input = stdin.readLineSync() ?? '';

    if (input == '') {
      print('다시 입력해 주세요.');
    } else {
      studentName = input;
      firstInput = input;
      break;
    }
  }
  int count = 1;
  while (true) {
    if (studentList.contains(studentName)) {
      count++;
      studentName = '$firstInput($count)';
    } else {
      break;
    }
  }
  return studentName;
}

 int saveStudentScore(List<StudentScore> studentsInfo) {
  int score;
  while (true) {
    stdout.write('> 학생 점수: ');
    String input = stdin.readLineSync() ?? '';

    if (input == '') {
      print('다시 입력해 주세요.');
    } else if (int.parse(input) > 100) {
      print('최고 점수는 100점 입니다. 다시 입력해 주세요.');
    } else if (input is int) {
      print('점수를 숫자로 입력해 주세요.');
    } else {
      score = int.parse(input);
      break;
    }
  }
  return score;
 }