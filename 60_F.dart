import 'dart:io';

void main() {
  File file = File("test.csv");
  stdout.write("Enter Number of Rows: ");
  int? n = int.parse(stdin.readLineSync()!);
  file.writeAsStringSync('Name,Phone\n');
  for (int i = 0; i < n; i++) {
    // user input name
    stdout.write("Enter name of student ${i + 1}: ");
    String? name = stdin.readLineSync();
    stdout.write("Enter phone of student ${i + 1}: ");
    // user input phone
    String? phone = stdin.readLineSync();
    file.writeAsStringSync('$name,$phone\n', mode: FileMode.append);
  }
  print("Congratulations!! CSV file written successfully.");
}
