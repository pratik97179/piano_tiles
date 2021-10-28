import 'dart:math';

class RandomNumber {
  static int get() {
    return ((Random().nextInt(4)).floor()/pi*pi).round();
  }
}
