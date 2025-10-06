import 'dart:io';
import 'package:assignment2/load_student_data.dart';
import 'package:assignment2/score.dart';

void main(List<String> arguments) {
  List<StudentScore> studentsInfo = [];
  List<String> studentList = [];

  studentsInfo = loadStudentData('students.txt');

  for (int i = 0; i < studentsInfo.length; i++) {
    studentList.add(studentsInfo[i].student);
  }

  while (true) {
    stdout.write('\n어떤 학생의 통계를 확인하시겠습니까? ');
    String? input = stdin.readLineSync();

    switch (studentList.contains(input)) {
      case true:
        for (int i = 0; i < studentsInfo.length; i++) {
          if (studentsInfo[i].student == input) {
            studentsInfo[i].showInfo();
          }
        }
        break;
      default:
        print('등록되지 않은 학생입니다. 다시 입력해주세요.');
        break;
    }
  }
}
