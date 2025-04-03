import 'package:test_task/number_generator/linear_congruential_generator.dart';

///Class for generate number logic
class NumberGenerator {
  int _seed = DateTime.now().millisecondsSinceEpoch;
  final LinearCongruentialGenerator _congruentialGenerator =
      LinearCongruentialGenerator();

  ///Method for generate number using linear congruential generator
  int generateNumberUsingLCG() {
    _seed = _congruentialGenerator.generate(seed: _seed);

    return _seed;
  }
}
