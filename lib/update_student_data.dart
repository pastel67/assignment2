import 'dart:io';
import 'package:dart_application/input_student_info.dart';
import 'package:dart_application/score.dart';

void updateStudentData(String filePath, List<StudentScore> studentsInfo) {
  print('\n등록할 학생의 이름을 입력해주세요.');
  String getStudentName = inputStudentName(studentsInfo);
  print(getStudentName);

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

  studentsInfo.add(StudentScore(getStudentName, score));

  try {
    final file = File(filePath);
    String content = '';

    for (int i = 0; i < studentsInfo.length; i++) {
      if (i == 0) {
        content +=
            '${studentsInfo[i].studentName},${studentsInfo[i].studentScore}';
      } else {
        content +=
            '\n${studentsInfo[i].studentName},${studentsInfo[i].studentScore}';
      }
    }

    file.writeAsStringSync(content);
    print('학생 정보가 저장되었습니다.');
  } catch (e) {
    print("저장에 실패했습니다: $e");
  }
}
