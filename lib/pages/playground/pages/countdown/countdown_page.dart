import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/countdown/models/countdown.dart';
import 'package:koheikanagu_github_io/pages/playground/playground_page.dart';

class CountdownPage extends StatelessWidget {
  const CountdownPage({Key? key}) : super(key: key);

  static const routeName = '${PlayGroundPage.routeName}/countdown';

  @override
  Widget build(BuildContext context) {
    final dl = Countdown.deadline;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.red),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
      ),
      body: Center(
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'カウントダウン',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 68),
              ),
              Text(
                '${dl.year}年${dl.month}月${dl.day}日${dl.hour}時の提出期限まであと',
                style: const TextStyle(fontSize: 48),
              ),
              LeftTime(),
            ],
          ),
        ),
      ),
    );
  }
}

class LeftTime extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final value = useProvider(countdownProvider.state);

    final text = '${value.inDays}日'
        "${value.inHours.remainder(24).toString().padLeft(2, "0")}:"
        "${value.inMinutes.remainder(60).toString().padLeft(2, "0")}:"
        "${value.inSeconds.remainder(60).toString().padLeft(2, "0")}."
        "${value.inMilliseconds.remainder(1000).toString().padLeft(3, "0")}";

    return Text(
      text,
      style: const TextStyle(
        fontSize: 128,
        fontWeight: FontWeight.bold,
        color: Colors.red,
        fontFamily: 'Courier',
      ),
    );
  }
}

final AutoDisposeStateNotifierProvider<Countdown> countdownProvider =
    StateNotifierProvider.autoDispose(
  (ref) => Countdown(),
);
