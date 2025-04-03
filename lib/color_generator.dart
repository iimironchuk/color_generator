import 'dart:math';
import 'dart:ui';

import 'package:test_task/number_generator/number_generator.dart';

///Class for generating color logic
class ColorGenerator {
  final NumberGenerator _numberGenerator = NumberGenerator();
  final Random _random = Random();

  static const int _alphaValue = 255;
  static const int _maxvalue = 256;

  ///Method for generating new color using dart:math
  Color generateColorUsingRandom() {
    return Color.fromARGB(
      _alphaValue,
      _random.nextInt(_maxvalue),
      _random.nextInt(_maxvalue),
      _random.nextInt(_maxvalue),
    );
  }

  Color generateColorUsingLCG() {
    return Color.fromARGB(
      _alphaValue,
      _numberGenerator.generateNumberUsingLCG(),
      _numberGenerator.generateNumberUsingLCG(),
      _numberGenerator.generateNumberUsingLCG(),
    );
  }


}
