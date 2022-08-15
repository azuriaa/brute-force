class BruteForce {
  List chars = [];
  int min = 1;
  int max = 1;

  generate(List current, len, List chars, callback) {
    if (current.length == len) {
      callback(current);
    }

    if (current.length < len) {
      for (var i in chars) {
        generate(current + [i], len, chars, callback);
      }
    }
  }

  setLength(int min, int max) {
    this.min = min;
    this.max = max;
  }

  setChars(List chars) {
    this.chars = chars;
  }

  brute(callback) {
    for (var l = min; l <= max; ++l) {
      generate([], l, chars, callback);
    }
  }
}
