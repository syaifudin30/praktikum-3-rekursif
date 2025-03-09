import 'dart:io';

void generateCombinations(String current, int n) {
  if (n == 0) {
    stdout.write('$current ');
  } else {
    for (int i = 97; i <= 99; i++) { // ASCII 'a' = 97, 'b' = 98, 'c' = 99
      generateCombinations(current + String.fromCharCode(i), n - 1);
    }
  }
}

void main() {
  stdout.write("Masukkan jumlah karakter: ");
  int n = int.parse(stdin.readLineSync()!);
  generateCombinations("", n);
  print("\nBUILD SUCCESSFUL");
}
