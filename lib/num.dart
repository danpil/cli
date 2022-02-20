extension NumUtils on num {
  num mabs() {
    return (this < 0) ? -this : this;
  }

  root(int rootDegree) {
    if(this <= 0) {
      throw Exception('Число должно быть положительным.');
    }

    if (rootDegree < 1) {
      throw ArgumentError('Показатель степени корня должен быть > 1');
    }

    double eps = 0.00001;
    double root = this / rootDegree;
    double rn = this.toDouble();
    int countiter = 0;
    while ((root - rn).mabs() >= eps) {
      rn = this.toDouble();
      for (int i = 1; i < rootDegree; i++) {
        rn = rn / root;
      }
      root = 0.5 * (rn + root);
      countiter++;
    }

    print('Число итераций = $countiter');

    return root;
  }
}
