import 'package:KoheiKanagu_github_io/pages/playground/pages/countdown/models/countdown.dart';
import 'package:KoheiKanagu_github_io/pages/playground/playground_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountdownPage extends StatelessWidget {
  const CountdownPage({Key key}) : super(key: key);

  static const routeName = '${PlayGroundPage.routeName}/countdown';

  @override
  Widget build(BuildContext context) {
    final dl = Countdown.deadline;

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
      ),
      body: Center(
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'カウントダウン',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 68),
              ),
              Text(
                '${dl.year}年${dl.month}月${dl.day}日${dl.hour}時の提出期限まであと',
                style: const TextStyle(fontSize: 48),
              ),
              ValueListenableProvider(
                create: (_) => Countdown(),
                child: LeftTime(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LeftTime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final value = context.watch<Duration>();

    final text = '${value.inDays}日'
        "${value.inHours?.remainder(24).toString().padLeft(2, "0")}:"
        "${value.inMinutes?.remainder(60).toString().padLeft(2, "0")}:"
        "${value.inSeconds?.remainder(60).toString().padLeft(2, "0")}."
        "${value.inMilliseconds?.remainder(1000).toString().padLeft(3, "0")}";

    return Text(
      text,
      style: TextStyle(
        fontSize: 128,
        fontWeight: FontWeight.bold,
        color: Colors.red,
      ),
    );
  }
}
