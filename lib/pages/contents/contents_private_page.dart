import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/pages/contents/contents_page.dart';
import 'package:koheikanagu_github_io/pages/root_page.dart';
import 'package:koheikanagu_github_io/providers/sign/sign_provider.dart';

class ContentsPrivatePage extends ConsumerWidget {
  const ContentsPrivatePage({
    Key? key,
  }) : super(key: key);

  static const location = '${ContentsPage.path}/$path';

  static const path = 'private';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          _SignOutButton(),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: const SelectableText('メールアドレス'),
            subtitle: SelectableText(
              ref.watch(signProvider).email,
            ),
          ),
          ListTile(
            title: const SelectableText('ログインプロバイダ'),
            subtitle: SelectableText(
              ref.watch(signProvider).providerIds.join(', '),
            ),
          ),
        ],
      ),
    );
  }
}

class _SignOutButton extends ConsumerWidget {
  const _SignOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        GoRouter.of(context).go(RootPage.path);
        ref.read(signProvider.notifier).signOut();
      },
      child: const Text(
        'サインアウト',
      ),
    );
  }
}
