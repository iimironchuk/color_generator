import 'dart:math';
import 'dart:ui';

import 'package:test_task/number_generator/number_generator.dart';

///Class for generating color logic
class ColorGenerator {
  final NumberGenerator _numberGenerator = NumberGenerator();
  static const int _alphaValue = 255;

  ///Method for generating new color using dart:math
  Color generateColorUsingRandom() {
    return Color.fromARGB(
      _alphaValue,
      _numberGenerator.generateNumberUsingRandom(),
      _numberGenerator.generateNumberUsingRandom(),
      _numberGenerator.generateNumberUsingRandom(),
    );
  }

  ///Method for generate number using linear congruential generator
  Color generateColorUsingLCG() {
    return Color.fromARGB(
      _alphaValue,
      _numberGenerator.generateNumberUsingLCG(),
      _numberGenerator.generateNumberUsingLCG(),
      _numberGenerator.generateNumberUsingLCG(),
    );
  }


}
