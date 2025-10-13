import 'dart:io';
import 'package:dart_application/find_student_info.dart';
import 'package:dart_application/load_student_data.dart';
import 'score.dart';

// 과제 1: 학생 정보 출력 및 파일 저장
void assignmenat1(List<StudentScore> studentsInfo) {
  List<String> studentList = loadNameList('students.txt');
  
  while (true) {
    //등록되어있는 학생 목록 출력(추가기능)
    print('\n--------------*등록된 학생 목록*--------------');
    print(studentList);
    print('----------------------------------------------');
    //학생 정보 출력
    String content = findStudentInfo(studentsInfo);
    
    //출력한 학생 정보 저장
    try {
      final file = File('result.txt');
      file.writeAsStringSync(content);
      print("저장이 완료되었습니다.");
    } catch (e) {
      print("저장에 실패했습니다: $e");
    }
    return;
  }
}
