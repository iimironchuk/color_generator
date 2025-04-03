import 'dart:math';
import 'dart:ui';

///Class for generating color logic
class ColorGenerator {
  final Random _random = Random();

  static const int _alphaValue = 255;
  static const int _maxvalue = 256;

  ///Method for generating new color
  Color generateColor() {
    return Color.fromARGB(
      _alphaValue,
      _random.nextInt(_maxvalue),
      _random.nextInt(_maxvalue),
      _random.nextInt(_maxvalue),
    );
  }
}
