import 'dart:io';

import 'package:dart_application/score.dart';

void deleteStudentData(String filePath, List<StudentScore> studentsInfo) {
  String? name;
  String firstInput;
  print('\n제거할 학생 이름을 입력해 주세요.');
  while (true) {
    stdout.write('> 학생 이름: ');
    String input = stdin.readLineSync() ?? '';
    if (input == '') {
      print('다시 입력해 주세요.');
    } else {
      firstInput = input;
      name = input;
      break;
    }
  }

  try {
   // while (true) {
      int count = 1;
      StudentScore deleteStudentName = studentsInfo.firstWhere(
        (match) => match.studentName == name,
      );

      if (name == deleteStudentName.studentName) {
        count++;
        name = '$firstInput($count)';
        print(firstInput);
        print(count);
        print(name);
      } else {
        name = '$firstInput(${count - 1})';
        print(name);
      //  break;
      }
    //}

    /*final file = File(filePath);
    String content = '';

    for (var deleteStudent in studentsInfo) {
      content += '${deleteStudent.studentName},${deleteStudent.studentScore}\n';
    }
    file.writeAsStringSync(content);
    print('학생 정보가 삭제되었습니다.');*/
  } catch (e) {
    print("삭제에 실패했습니다: $e");
  }
}
