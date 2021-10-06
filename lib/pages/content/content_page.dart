import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContentPage extends ConsumerWidget {
  const ContentPage({
    Key? key,
  }) : super(key: key);

  static const path = '/content';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(path),
    );
  }
}
