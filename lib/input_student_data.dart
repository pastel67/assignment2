import 'dart:io';
import 'package:dart_application/load_student_data.dart';

// 학생 이름 입력 함수
// deleteSwitch: true(삭제), false(등록,검색)
// nameCheckSwitch: true(동명이인 처리), false(동명이인 처리X
String inputStudentName(bool deleteSwitch, bool nameCheckSwitch) {
  List<String> studentList = loadNameList('students.txt');

  // 등록할 학생 이름 입력
  String studentName = '';
  String firstInput = '';
  while (true) {
    stdout.write('> 학생 이름: ');
    String input = stdin.readLineSync() ?? '';
    String replacedInput = input.replaceAll(' ', '');

    //입력값 필터링
    if (deleteSwitch
        ? !studentList.contains(input) || replacedInput == ''
        : replacedInput == '') {
      deleteSwitch ? print('동록되지 않은 학생입니다.') : print('다시 입력해 주세요.');
    } else {
      studentName = input.trim();
      firstInput = input.trim();
      break;
    }
  }

  // 동명이인 이름 뒤에 숫자 추가(추가기능)
  bool nameCheck = nameCheckSwitch ? true : false;

  switch (nameCheck) {
    case true:
      int count = 1;
      while (true) {
        if (studentList.contains(studentName)) {
          count++;
          studentName = '$firstInput($count)';
        } else if (count == 2) {
          deleteSwitch ? studentName = firstInput : null;
          break;
        } else if (count > 2) {
          deleteSwitch ? studentName = '$firstInput(${count -= 1})' : null;
          break;
        } else {
          break;
        }
      }
      return studentName;
    case false:
      return studentName;
  }
}

// 학생 점수 입력 함수
int inputStudentScore() {
  // 등록할 학생의 점수 입력
  int score;
  while (true) {
    stdout.write('> 학생 점수: ');
    String input = stdin.readLineSync() ?? '';

    // 1~100의 숫자만 입력 할 수 있게 입력값 필터링
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
