import 'dart:io';
import 'package:dart_application/assignment_1.dart';
import 'package:dart_application/assignment_2.dart';
import 'package:dart_application/load_student_data.dart';
import 'package:dart_application/score.dart';


void main(List<String> arguments) {
  List<StudentScore> studentsInfo = [];
  

  studentsInfo = loadStudentData('students.txt');
  print('${studentsInfo[0].student}, ${studentsInfo[0].score}');

  print('\n프로그램을 실행합니다.\n');

  while(true){
    print('1. 필수 과제');
    print('2. 도전 과제');
    print('3. 종료\n');
    stdout.write('선택: ');
    String? input = stdin.readLineSync();
    switch(input){
      case '1':
        assignmenat(studentsInfo);
        break;
      case '2':
        assignmenat2(studentsInfo);
        break;
      case '3':
        print('감사합니다!!');
        return;
      case '7':
        print('\n__77______77____77__77____77__77____77__77_____77_____7777__7777__');
        print('__77______77____77__77___77___77___77____77___77_____7___7_7___7__');
        print('__77______77____77__77__77____77__77______77_77_______7777_7777___');
        print('__77______77____77__7777______7777_________777_______7___7_7___7__');
        print('__77_______77__77___77__77____77__77_______77________7777__7777___');
        print('__777777____7777____77___777__77___777_____77______7777___________');
        break;
    }
  }
}
