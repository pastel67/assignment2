class Score {
  int score;

  Score(this.score);

  void showInfo() {
    print('>점수 : $score');
  }
}

class StudentScore extends Score {
  String student;

  StudentScore(this.student, super.score);

  String studentInfo(){
    return '이름 : $student, 점수 : $score';
  }
  @override
  void showInfo() {
    print('\n> 이름 : $student, 점수 : $score');
  }
}
