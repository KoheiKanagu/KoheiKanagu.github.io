import 'dart:async';

import 'package:flutter/material.dart';

class Countdown with ChangeNotifier {
  static final DateTime deadline = DateTime(2020, 1, 31, 17, 0);

  Duration leftTime;

  Timer _timer;

  Countdown() {
    _timer = Timer.periodic(Duration(milliseconds: 1), (_) {
      leftTime = deadline.difference(DateTime.now());
      notifyListeners();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}
