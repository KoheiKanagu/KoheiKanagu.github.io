import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({
    Key? key,
  }) : super(key: key);

  static const path = '/settings';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: const [
          ListTile(
            title: Text('何かの設定'),
            subtitle: Text('TODO'),
          )
        ],
      ),
    );
  }
}
