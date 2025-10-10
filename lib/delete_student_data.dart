import 'dart:io';
import 'package:dart_application/input_student_data.dart';
import 'package:dart_application/score.dart';

void deleteStudentData(String filePath, List<StudentScore> studentsInfo) {
  String getStudentName = inputStudentName(true);
  
  for (int i = 0; i < studentsInfo.length; i++) {
    if (studentsInfo[i].studentName == getStudentName) {
      studentsInfo.remove(studentsInfo[i]);
      break;
    }
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
