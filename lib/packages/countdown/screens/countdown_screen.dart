import 'package:KoheiKanagu_github_io/packages/countdown/models/countdown.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountdownScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
      ),
      body: Center(
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "カウントダウン",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 68),
              ),
              Text(
                "2020年1月31日17時の提出期限まであと",
                style: TextStyle(fontSize: 48),
              ),
              ChangeNotifierProvider(
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
    final countdown = Provider.of<Countdown>(context);

    final text = "${countdown.leftTime?.inDays}日"
        "${countdown.leftTime?.inHours?.remainder(24).toString().padLeft(2, "0")}:"
        "${countdown.leftTime?.inMinutes?.remainder(60).toString().padLeft(2, "0")}:"
        "${countdown.leftTime?.inSeconds?.remainder(60).toString().padLeft(2, "0")}."
        "${countdown.leftTime?.inMilliseconds?.remainder(1000).toString().padLeft(3, "0")}";

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
