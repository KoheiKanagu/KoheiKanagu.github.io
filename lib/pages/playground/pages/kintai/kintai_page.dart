import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/kintai/notifiers/time_card_notifier.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/kintai/widgets/kintai_button.dart';
import 'package:koheikanagu_github_io/pages/playground/playground_page.dart';

class KintaiPage extends HookWidget {
  const KintaiPage({Key key}) : super(key: key);

  static const routeName = '${PlayGroundPage.routeName}/kintai';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: useProvider(timeCardNotifier).scaffoldKey,
      appBar: AppBar(),
      body: Builder(
        builder: (context) {
          useProvider(timeCardNotifier).fetchToday();
          return const Center(child: KintaiButton());
        },
      ),
    );
  }
}

final timeCardNotifier = StateNotifierProvider.autoDispose(
  (ref) => TimeCardNotifier(),
);
