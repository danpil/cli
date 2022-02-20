// import 'dart:math' as Math;

int gcd_two_numbers(int x, int y) {
  x = x.abs();
  y = y.abs();

  while(y > 0) {
    var t = y;
    y = x % y;
    x = t;
  }
  return x;
}

lcm_two_numbers(int x, int y) {
  return (x < 0 || y < 0) ? 0 : (x * y) / gcd_two_numbers(x, y).abs();
}

void simpleFactors(int n) {
  final List<int> result = [];
  n = n.abs();
  int div = 2;

  while (n > 1) {
    while (n % div == 0) {
      result.add(div);
      n = n ~/ div;
    }
    if (div == 2) {
      div++;
    } else {
      div += 2;
    }
  }

  print(result.join(' * '));
}

int toDecimalSystem(String value) {
  return int.parse(value, radix: 2);
}

toBinarySystem(int value) {
  return int.parse(value.toRadixString(2));
}
