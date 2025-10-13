import 'package:dart_application/input_student_data.dart';
import 'package:dart_application/load_student_data.dart';
import 'package:dart_application/score.dart';

// 학생 정보 검색 함수
String findStudentInfo(List<StudentScore> studentsInfo) {
  // 학생 정보 검색
  while (true) {
    List<String> studentList = loadNameList('students.txt');

    String findStudentName = inputStudentName(false, false);

    String result = '';

    // 학생 정보 출력

    switch (studentList.contains(findStudentName)) {
      case true:
        for (int i = 0; i < studentsInfo.length; i++) {
          if (studentsInfo[i].studentName.contains(findStudentName)) {
            result += '${studentsInfo[i].infomation()}\n';
            studentsInfo[i].showInfo();
          }
        }
        return result;
      default:
        print('\n*등록되지 않은 학생입니다. 다시 입력해주세요.');
    }
  }
}
