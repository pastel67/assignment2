class Score {
  int studentScore;

  Score(this.studentScore);

  void showInfo() {
    print('>점수 : $studentScore');
  }
}

class StudentScore extends Score {
  String studentName;

  StudentScore(this.studentName, super.studentScore);

  String infomation() {
    return '이름 : $studentName, 점수 : $studentScore';
  }

  @override
  void showInfo() {
    print(infomation());
  }
}
