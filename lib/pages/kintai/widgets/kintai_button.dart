import 'package:KoheiKanagu_github_io/pages/kintai/notifiers/time_card_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KintaiButton extends StatelessWidget {
  const KintaiButton({Key key}) : super(key: key);

  TextStyle get _textStyle => const TextStyle(
        fontSize: 64,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      );

  @override
  Widget build(BuildContext context) {
    final notifier = context.watch<TimeCardNotifier>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Spacer(),
        FittedBox(
          child: MaterialButton(
              color: Colors.blue,
              onPressed: () => context.read<TimeCardNotifier>().punchIn(),
              child: Text('出勤', style: _textStyle)),
        ),
        const Spacer(),
        FittedBox(
          child: MaterialButton(
              color: Colors.red,
              onPressed: () => context.read<TimeCardNotifier>().punchOut(),
              child: Text('退勤', style: _textStyle)),
        ),
        const Spacer(),
      ],
    );
  }
}
