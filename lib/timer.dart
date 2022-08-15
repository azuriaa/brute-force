class Timer {
  static DateTime start = DateTime.now();
  static DateTime end = DateTime.now();

  static timerStart() {
    Timer.start = DateTime.now();
  }

  static timerStop() {
    Timer.end = DateTime.now();
  }

  static getTimer() {
    int output =
        Timer.end.millisecondsSinceEpoch - Timer.start.millisecondsSinceEpoch;

    return 'Time: $output ms';
  }
}
