import 'dart:io';

void main() {
  int n = 6; // Jumlah baris segitiga Pascal
  for (int i = 0; i < n; i++) {
    // Cetak spasi untuk membentuk segitiga
    stdout.write(' ' * (n - i));

    for (int j = 0; j <= i; j++) {
      stdout.write('${pascal(i, j)} ');
    }
    print('');
  }
}

int pascal(int row, int col) {
  if (col == 0 || col == row) return 1;
  return pascal(row - 1, col - 1) + pascal(row - 1, col);
}
