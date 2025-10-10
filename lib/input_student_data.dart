import 'dart:io';
import 'package:dart_application/load_student_data.dart';
import 'package:dart_application/score.dart';

String inputStudentName(List<StudentScore> studentsInfo, bool deleteSwitch) {
  String studentName = '';
  String firstInput = '';
  // 등록할 학생 이름 입력 
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
  // 동명이인 이름 뒤에 숫자 추가
  int count = 1;
  while (true) {
    if (studentList.contains(studentName)) {
      count++;
      studentName = '$firstInput($count)';
    } else if (count - 1 == 1) {
      studentName = firstInput;
      break;
    } else {
      deleteSwitch ? studentName = '$firstInput(${count -= 1})' : null;
      break;
    }
  }
  return studentName;
}

int inputStudentScore(List<StudentScore> studentsInfo) {
  int score;
  while (true) {
    stdout.write('> 학생 점수: ');
    String input = stdin.readLineSync() ?? '';
    
    // 1~100의 숫자만 입력 할 수 있게 하는 조건식
    try {
      int.parse(input);

      if (input == '') {
        print('다시 입력해 주세요.');
      } else if (int.parse(input) > 100 || int.parse(input) < 0) {
        print('최고 점수는 100점 입니다. 다시 입력해 주세요.');
      } else {
        score = int.parse(input);
        break;
      }
    } catch (e) {
      print('점수를 숫자로 입력해 주세요.');
    }
  }
  return score;
}
