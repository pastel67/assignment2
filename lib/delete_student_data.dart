import 'dart:io';
import 'package:dart_application/input_student_data.dart';
import 'package:dart_application/score.dart';

void deleteStudentData(String filePath, List<StudentScore> studentsInfo) {
  String getStudentName = inputStudentName(true);
  for (int i = 0; i < studentsInfo.length; i++) {
    print(studentsInfo[i].studentName);
  }
  print('---------delete---------');
  StudentScore? deleteStudentInfo;
  for (int i = 0; i < studentsInfo.length; i++) {
    if (studentsInfo[i].studentName == getStudentName) {
      deleteStudentInfo = studentsInfo[i];
      break;
    }
    if (studentsInfo[i].studentName != getStudentName) {
      print('등록되지 얺은 학생 입니다.');
    }
  }
  studentsInfo.remove(deleteStudentInfo);
  print('---------delete---------');

  for (int i = 0; i < studentsInfo.length; i++) {
    print(studentsInfo[i].studentName);
  }
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
    print('$getStudentName학생의 정보가 삭제 되었습니다.');
  } catch (e) {
    print("삭제에 실패했습니다: $e");
  }
}
