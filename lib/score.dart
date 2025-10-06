class Score {
  int score;

  Score(this.score);

  void showInfo() {
    print('점수 : $score');
  }
}

class StudentScore extends Score {
  String student;

  StudentScore(this.student, super.score);

  String toStringStudentName(){
    return student;
  }
  @override
  void showInfo() {
    print('이름 : $student, 점수 : $score');
  }
}
