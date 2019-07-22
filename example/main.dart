import 'package:filesize/filesize.dart';

void main() {
  final fs = filesize(1024);
  print(fs);
  final fs2 = filesize(1024 * 1024);
  print(fs2);
  final fs3 = filesize(1024 * 1024 * 1024);
  print(fs3);
  final fs4 = filesize(1024 * 1024 * 1024 * 1024);
  print(fs4);
}
