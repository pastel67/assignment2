import 'dart:io';
import 'package:dart_application/load_student_data.dart';
import 'score.dart';

void assignmenat1(List<StudentScore> studentsInfo) {
  studentList = [];

  loadStudentData('students.txt');
  
  while (true) {
    //등록되어있는 학생 목록 출력(추가기능)
    print('\n*등록된 학생 목록');
    print(studentList);
    // 출력할 학생 정보 입력
    stdout.write('\n어떤 학생의 통계를 확인하시겠습니까?\n> ');
    String? input = stdin.readLineSync();

    //학생 정보 출력
    switch (studentList.contains(input)) {
      case true:
        for (int i = 0; i < studentsInfo.length; i++) {
          if (studentsInfo[i].studentName == input) {
            String content = '${studentsInfo[i].infomation()}\n';
            studentsInfo[i].showInfo();
            
            //출력한 학생 정보 저장
            try {
              final file = File('result.txt');
              file.writeAsStringSync(content);
              print("저장이 완료되었습니다.\n");
            } catch (e) {
              print("저장에 실패했습니다: $e\n");
            }
            return;
          }
        }
      default:
        print('\n> 등록되지 않은 학생입니다. 다시 입력해주세요.');
        break;
    }
  }
}
