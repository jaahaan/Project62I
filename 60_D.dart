import 'dart:io';

void main() {
  File file = File("test.txt");
  if (file.existsSync()) {
    file.deleteSync();
    print("File deleted");
  } else {
    print("File Not Found");
  }
}
