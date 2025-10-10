import 'dart:io';
import 'package:dart_application/input_student_data.dart';
import 'package:dart_application/score.dart';

void deleteStudentData(String filePath, List<StudentScore> studentsInfo) {
  String getStudentName = inputStudentName(studentsInfo, true);

  print(getStudentName);

  /*try {
    final file = File(filePath);
    String content = '';

    for (var deleteStudent in studentsInfo) {
      content += '${deleteStudent.studentName},${deleteStudent.studentScore}\n';
    }
    file.writeAsStringSync(content);
    print('학생 정보가 삭제되었습니다.');
  } catch (e) {
    print("삭제에 실패했습니다: $e");
  }*/
}
