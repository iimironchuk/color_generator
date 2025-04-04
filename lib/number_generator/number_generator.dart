import 'dart:math';

import 'package:test_task/number_generator/linear_congruential_generator.dart';

//I`d like to explain some of my actions. Firstly, i decided to use dart:math
//to generate random number. But then i remembered that in task description
//there was something like "it`s require some algorithm implementation"
// so I used linear congruential generator algorithm to generate number.

///Class for generate number logic
class NumberGenerator {
  int _seed = DateTime.now().millisecondsSinceEpoch;
  final LinearCongruentialGenerator _congruentialGenerator =
      LinearCongruentialGenerator();

  final Random _random = Random();
  static const int _maxvalue = 256;

  ///Method for generate number using linear congruential generator
  int generateNumberUsingLCG() {
    _seed = _congruentialGenerator.generate(seed: _seed);

    return _seed;
  }

  ///Method for generate number using dart:math
  int generateNumberUsingRandom(){
    return _random.nextInt(_maxvalue);
  }
}
