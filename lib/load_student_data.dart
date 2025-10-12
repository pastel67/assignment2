import 'dart:io';
import 'score.dart';

List<StudentScore> loadStudentData(String filePath) {
  // 학생 정보 클래스 속성의 리스트 작성
  List<StudentScore> studentsInfo = [];
  try {
    final file = File(filePath);
    final List<String> lines = file.readAsLinesSync();

    for (var line in lines) {
      final List<dynamic> parts = line.split(',');
      if (parts.length != 2)
        throw FormatException(
          '잘못된 데이터 형식: $line(사용할 수 없는 이름, 이름이나 점수 누락, 빈칸 기제 등 확인',
        );
      String student = parts[0].trim();
      int score = int.parse(parts[1]);

      studentsInfo.add(StudentScore(student, score));
    }
  } catch (e) {
    print("\n학생 데이터를 불러오는 데 실패했습니다: $e");
    exit(1);
  }
  return studentsInfo;
}

// 학생 이름 리스트 작성
List<String> loadNameList(String filePath) {
  List<String> studentList = [];

  try {
    final file = File(filePath);
    final List<String> lines = file.readAsLinesSync();

    for (int i = 0; i < lines.length; i++) {
      final List<dynamic> parts = lines[i].split(',');
      if (parts.length != 2) throw FormatException('잘못된 데이터 형식: ${lines[i]}(사용할 수 없는 이름, 이름이나 점수 누락, 빈칸 기제 등 확인)',);
      String student = parts[0].trim();
      studentList.add(student);

      if (i % 5 == 1 && i != 1) {
        studentList.add('\n');
      } else if (i == 0) {
        continue;
      }
    }
  } catch (e) {
    print("\n학생 데이터를 불러오는 데 실패했습니다: $e");
    exit(1);
  }
  return studentList;
}
