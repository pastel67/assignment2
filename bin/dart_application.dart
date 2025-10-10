import 'dart:io';
import 'package:dart_application/assignment_1.dart';
import 'package:dart_application/assignment_2.dart';
import 'package:dart_application/load_student_data.dart';
import 'package:dart_application/score.dart';

void main(List<String> arguments) {
  List<StudentScore> studentsInfo = [];

  studentsInfo = loadStudentData('students.txt');

  print('\n프로그램을 실행합니다.');

  // 프로그램 메뉴 출력 및 실행
  while (true) {
    print('\n메뉴를 선택하세요.');
    print('1. 필수 과제'); 
    print('2. 도전 과제'); 
    print('3. 종료\n');
    stdout.write('> 선택: ');
    String? input = stdin.readLineSync();
    switch (input) {
      case '1':
        assignmenat1(studentsInfo);
        break;
      case '2':
        assignmenat2(studentsInfo);
        break;
      case '3':
        print('------------\n감사합니다!!\n------------');
        return;
      //히든 커멘드 7 입력시 나타나는 이스터에그 => LUCKKY🍀 그림과 함께 종료(추가)
      case '7':
        print(
          '\n  77      77    77    77777   77    77  77    77  77     77      777 7777   ',
        );
        print(
          '  77      77    77   77   77  77   77   77   77    77   77      7   77   7  ',
        );
        print(
          '  77      77    77  77        77  77    77  77      77 77     77 777 7777   ',
        );
        print(
          '  77      77    77  77        7777      7777         777     7  7   7   7   ',
        );
        print(
          '  77       77  77    77   77  77  77    77  77       77     7   777  777    ',
        );
        print(
          '  777777    7777      77777   77   777  77   777     77     7               \n',
        );
        print('good luck!\n');
        return;
      default:
        print('잘못된 입력입니다. 다시 입력해주세요.');
    }
  }
}
