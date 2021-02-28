import 'package:flutter/material.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/kintai/notifiers/time_card_notifier.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/kintai/widgets/kintai_button.dart';
import 'package:koheikanagu_github_io/pages/playground/playground_page.dart';
import 'package:provider/provider.dart';

class KintaiPage extends StatelessWidget {
  const KintaiPage({Key key}) : super(key: key);

  static const routeName = '${PlayGroundPage.routeName}/kintai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.watch<TimeCardNotifier>().scaffoldKey,
      appBar: AppBar(),
      body: Builder(
        builder: (context) {
          context.watch<TimeCardNotifier>().fetchToday();
          return const Center(child: KintaiButton());
        },
      ),
    );
  }
}
