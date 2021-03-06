import 'dart:async';
import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class Countdown extends StateNotifier<Duration> {
  Countdown() : super(const Duration()) {
    final random = Random();

    deadline = DateTime.now().add(
      Duration(
        days: random.nextInt(30),
        hours: random.nextInt(24),
        minutes: random.nextInt(60),
        seconds: random.nextInt(60),
      ),
    );

    _timer = Timer.periodic(
      const Duration(milliseconds: 1),
      (_) => state = deadline.difference(DateTime.now()),
    );
  }

  late DateTime deadline;

  late Timer _timer;

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}
