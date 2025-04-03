///Class for implementing linear congruential generator algorithm
class LinearCongruentialGenerator {
  static const int _a = 123;
  static const int _c = 11;
  static const int _m = 256;

  ///Method for generate number using linear congruential algorithm
  int generate({required int seed}){
    return (_a * seed + _c) % _m;
  }
}
