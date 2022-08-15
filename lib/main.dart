import 'dart:io';

import 'brute_force.dart';
import 'timer.dart';
import 'chars.dart';

void main() {
  print('Brute force started...');
  Timer.timerStart();
  List chars = Chars().get();
  var b = BruteForce();

  b.setLength(5, 8);
  b.setChars(chars);

  b.brute((current) {
    // lakukan sesuatu disini
    String currentText = current.join().toString();
    if (currentText == 'admin') {
      print('found: $currentText');
      Timer.timerStop();
      print(Timer.getTimer());
      exit(0);
    }
  });
}
