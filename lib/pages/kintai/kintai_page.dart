import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class KintaiPage extends StatelessWidget {
  const KintaiPage({Key key}) : super(key: key);

  static const routeName = '/kintai';

  TextStyle get _textStyle => const TextStyle(
        fontSize: 64,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            FittedBox(
              child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text('出勤', style: _textStyle)),
            ),
            const Spacer(),
            FittedBox(
              child: MaterialButton(
                  color: Colors.red,
                  onPressed: () {},
                  child: Text('退勤', style: _textStyle)),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
