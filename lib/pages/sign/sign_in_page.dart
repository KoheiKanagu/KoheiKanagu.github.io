import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/providers/sign_provider.dart';

class SignInPage extends ConsumerWidget {
  const SignInPage({
    Key? key,
  }) : super(key: key);

  static const path = '/signin';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => ref.read(signProvider.notifier).signIn(
                  id: 'guest@kingu.dev',
                  password: 'guest@kingu.dev',
                ),
            child: const Text('Sign In'),
          ),
          ElevatedButton(
            onPressed: () => ref.read(signProvider.notifier).signOut(),
            child: const Text('Sign Out'),
          )
        ],
      ),
    );
  }
}
