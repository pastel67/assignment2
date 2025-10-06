import 'dart:io';
import 'package:assignment2/load_student_data.dart';
import 'package:assignment2/save_results.dart';
import 'package:assignment2/score.dart';

void main(List<String> arguments) {
  List<StudentScore> studentsInfo = [];
  List<String> studentList = [];
  String content ='';

  studentsInfo = loadStudentData('students.txt');

  for (int i = 0; i < studentsInfo.length; i++) {
    studentList.add(studentsInfo[i].student);
  }
  int i = 0;
  while (i < 3) {
    stdout.write('\n어떤 학생의 통계를 확인하시겠습니까? ');
    String? input = stdin.readLineSync();

    switch (studentList.contains(input)) {
      case true:
        for (int i = 0; i < studentsInfo.length; i++) {
          if (studentsInfo[i].student == input) {
            content += '${studentsInfo[i].studentInfo()}\n';
            studentsInfo[i].showInfo();
          }
        }
        break;
      default:
        print('등록되지 않은 학생입니다. 다시 입력해주세요.');
        break;
    }
      
      i++;
    }
    saveResults('result.txt', content);
  }

