import 'dart:io';
import 'package:dart_application/input_student_data.dart';
import 'package:dart_application/score.dart';

void newStudentData(String filePath, List<StudentScore> studentsInfo) {
  // 학생 정보 추가(추가기능)
  print('\n등록할 학생의 이름을 입력해주세요.');
  String getStudentName = inputStudentName(false, true);
  int getStudentScore = inputStudentScore();

  studentsInfo.add(StudentScore(getStudentName, getStudentScore));

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
    print('$getStudentName 학생 정보가 저장되었습니다.');
  } catch (e) {
    print("저장에 실패했습니다: $e");
  }
}
