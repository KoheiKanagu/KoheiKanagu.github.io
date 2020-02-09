import 'package:KoheiKanagu_github_io/pages/countdown/models/countdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountdownPage extends StatelessWidget {
  const CountdownPage({Key key}) : super(key: key);

  static const routeName = '/countdown';

  @override
  Widget build(BuildContext context) {
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
              const Text(
                '2020年1月31日17時の提出期限まであと',
                style: TextStyle(fontSize: 48),
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
