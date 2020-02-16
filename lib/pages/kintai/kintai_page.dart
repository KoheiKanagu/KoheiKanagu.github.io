import 'package:KoheiKanagu_github_io/pages/kintai/notifiers/time_card_notifier.dart';
import 'package:KoheiKanagu_github_io/pages/kintai/widgets/kintai_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class KintaiPage extends StatelessWidget {
  const KintaiPage({Key key}) : super(key: key);

  static const routeName = '/kintai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<TimeCardNotifier>().scaffoldKey,
      appBar: AppBar(),
      body: Builder(
        builder: (context) {
          context.read<TimeCardNotifier>().fetchToday();
          return const Center(child: KintaiButton());
        },
      ),
    );
  }
}
