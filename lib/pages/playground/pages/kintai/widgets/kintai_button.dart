import 'package:flutter/material.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/kintai/notifiers/time_card_notifier.dart';
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
          child: Column(
            children: <Widget>[
              MaterialButton(
                color: Colors.blue,
                onPressed: notifier.punchIn,
                child: Text('出勤', style: _textStyle),
              ),
              Container(height: 12),
              notifier.value.when(
                (uid, today, punchInTime, punchOutTime) =>
                    Text(punchInTime?.toIso8601String() ?? '未設定'),
                notSignedIn: () => const Text('未サインイン'),
                undefined: () => const Text('未打刻'),
                error: () => const Text('エラー'),
              )
            ],
          ),
        ),
        const Spacer(),
        FittedBox(
          child: Column(
            children: <Widget>[
              MaterialButton(
                color: Colors.red,
                onPressed: notifier.punchOut,
                child: Text('退勤', style: _textStyle),
              ),
              Container(height: 12),
              notifier.value.when(
                (uid, today, punchInTime, punchOutTime) =>
                    Text(punchOutTime?.toIso8601String() ?? '未設定'),
                notSignedIn: () => const Text('未サインイン'),
                undefined: () => const Text('未打刻'),
                error: () => const Text('エラー'),
              )
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
