// 학생 점수 정보 클래스
class Score {
  int studentScore;

  Score(this.studentScore);

  void showInfo() {
    print('>점수 : $studentScore');
  }
}
// 학생 이름과 점수를 저장하는 클래스
class StudentScore extends Score {
  String studentName;

  StudentScore(this.studentName, super.studentScore);

  // 학생정보를 문자열로 표시하는 메서드
  String infomation() {
    return '이름 : $studentName, 점수 : $studentScore';
  }

  // 학생 정보 출력 메서드
  @override
  void showInfo() {
    print(infomation());
  }
}
