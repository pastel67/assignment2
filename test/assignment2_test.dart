import 'package:dart_application/load_student_data.dart';

void main() {
  List<String > list = loadNameList('students.txt');

  print(list);
}