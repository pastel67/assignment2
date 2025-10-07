import 'dart:io';
import 'score.dart';

List<StudentScore> loadStudentData(String filePath) {
  List<StudentScore> studentsInfo = [];
  
  try {
    final file = File(filePath);
    final List<String> lines = file.readAsLinesSync();

    for (var line in lines) {
      final List<dynamic> parts = line.split(',');
      if (parts.length != 2) throw FormatException('잘못된 데이터 형식: $line');

      String student = parts[0].trim();
      int score = int.parse(parts[1]);

      studentsInfo.add(StudentScore(student, score));
    }
  } catch (e) {
    print("학생 데이터를 불러오는 데 실패했습니다: $e");
    exit(1);
  }
  return studentsInfo;
}
