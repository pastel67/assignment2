import 'dart:io';
import 'package:dart_application/load_student_data.dart';

String inputStudentName(bool deleteSwitch) {
  studentList = [];

  loadStudentData('students.txt');
  // 등록할 학생 이름 입력
  String studentName = '';
  String firstInput = '';
  while (true) {
    stdout.write('> 학생 이름: ');
    String input = stdin.readLineSync()?? '';
    String replacedInput = input.replaceAll(' ', '');

    if (replacedInput == '') {
      print('다시 입력해 주세요.');
    } else {
      studentName = input.trim();
      firstInput = input.trim();
      break;
    }
  }
  // 동명이인 이름 뒤에 숫자 추가(추가)
  int count = 1;
  while (true) {
    if (studentList.contains(studentName)) {
      count++;
      studentName = '$firstInput($count)';
    } else if (count == 2) {
      deleteSwitch ? studentName = firstInput : null;
      deleteSwitch ? print('2 on') : print('2 off');
      break;
    } else if (count > 2) {
      deleteSwitch ? studentName = '$firstInput(${count -= 1})' : null;
      deleteSwitch ? print('3 on') : print('3 off');
      break;
    } else {
      deleteSwitch ? print('1 on') : print('1 off');
      break;
    }
  }
  return studentName;
}

int inputStudentScore() {
  // 등록할 학생의 점수 입력
  int score;
  while (true) {
    stdout.write('> 학생 점수: ');
    String input = stdin.readLineSync() ?? '';

    // 1~100의 숫자만 입력 할 수 있게 하는 조건식(추가)
    try {
      int.parse(input);

      if (input == '') {
        print('다시 입력해 주세요.');
      } else if (int.parse(input) > 100 || int.parse(input) < 0) {
        print('등록할 수 있는 점수는 0~100점 입니다. 다시 입력해 주세요.');
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
