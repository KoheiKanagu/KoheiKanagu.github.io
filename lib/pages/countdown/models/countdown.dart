import 'dart:async';

import 'package:flutter/material.dart';

class Countdown extends ValueNotifier<Duration> {
  Countdown() : super(const Duration()) {
    if (deadline.difference(DateTime.now()).isNegative) {
      return;
    }

    _timer = Timer.periodic(
      const Duration(milliseconds: 1),
      (_) {
        value = deadline.difference(DateTime.now());
      },
    );
  }

  static final DateTime deadline = DateTime(2020, 1, 31, 17, 0);

  Timer _timer;

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
