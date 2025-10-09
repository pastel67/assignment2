import 'dart:io';

void saveStudentData(String filePath, String content) {
  try {
    final file = File(filePath);
    file.writeAsStringSync(content);
    print("저장이 완료되었습니다.\n");
  } catch (e) {
    print("저장에 실패했습니다: $e\n");
  }
}