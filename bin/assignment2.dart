import 'dart:io';
import 'package:assignment2/loadStudentData.dart';
import 'package:assignment2/score.dart';

void main(List<String> arguments) {
  List<StudentScore> studentsInfo = [];

  studentsInfo = loadStudentData('students.txt');

  while (true) {
    stdout.write('어떤 학생의 통계를 확인하시겠습니까? ');
    String? input = stdin.readLineSync();
  }
}
