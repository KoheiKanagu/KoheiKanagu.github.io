import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class Countdown extends StateNotifier<Duration> {
  Countdown() : super(const Duration()) {
    if (deadline.difference(DateTime.now()).isNegative) {
      return;
    }

    _timer = Timer.periodic(
      const Duration(milliseconds: 1),
      (_) {
        state = deadline.difference(DateTime.now());
      },
    );
  }

  static final DateTime deadline = DateTime(2020, 12, 31, 23, 59);

  Timer? _timer;

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
