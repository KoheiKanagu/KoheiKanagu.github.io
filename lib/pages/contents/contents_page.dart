import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/pages/contents/contents_private_page.dart';
import 'package:koheikanagu_github_io/pages/contents/contents_public_page.dart';

class ContentsPage extends ConsumerWidget {
  const ContentsPage({
    Key? key,
  }) : super(key: key);

  static const path = '/contents';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("プライベート"),
            onTap: () {
              GoRouter.of(context).go(ContentsPrivatePage.location);
            },
          ),
          ListTile(
            title: Text("パブリック"),
            onTap: () {
              GoRouter.of(context).go(ContentsPublicPage.location);
            },
          ),
        ],
      ),
    );
  }
}
