import 'dart:math';

class RandomNumber {
  //Function to throw random numbers between 1-4 denoting next appearing tile's row
  static int get() {
    return ((Random().nextInt(4)).floor()/pi*pi).round();
  }
}
