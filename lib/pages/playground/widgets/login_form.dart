import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/pages/playground/notifiers/login_notifier.dart';

class LoginForm extends StatelessWidget {
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.only(bottom: 12, left: 12, right: 12),
        title: _LoginForm(_emailCtrl, _passCtrl, _formKey),
        trailing: _LoginButton(_emailCtrl, _passCtrl, _formKey),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton(
    this._emailCtrl,
    this._passCtrl,
    this._formKey, {
    Key key,
  }) : super(key: key);

  final TextEditingController _emailCtrl;
  final TextEditingController _passCtrl;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    if (useProvider(loginNotifier.state) != null) {
      return MaterialButton(
        color: Colors.red,
        child: const Text(
          'ログアウト',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () => context.read(loginNotifier).logout(),
      );
    }

    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: () async {
        if (_formKey.currentState.validate()) {
          final result = await context
              .read(loginNotifier)
              .login(_emailCtrl.text, _passCtrl.text);

          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text("ログイン${result ? "成功" : "失敗"}")),
          );
        }
      },
      child: const Text(
        'ログイン',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _LoginForm extends HookWidget {
  const _LoginForm(
    this._emailCtrl,
    this._passCtrl,
    this._formKey, {
    Key key,
  }) : super(key: key);

  final TextEditingController _emailCtrl;
  final TextEditingController _passCtrl;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'メール',
                icon: Icon(Icons.account_box),
              ),
              controller: _emailCtrl,
              enabled: useProvider(loginNotifier.state) == null,
              validator: (v) =>
                  EmailValidator.validate(v) ? null : '不正なメールアドレス',
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'パスワード',
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              controller: _passCtrl,
              enabled: useProvider(loginNotifier.state) == null,
              validator: (v) => v.isEmpty ? '空欄' : null,
            ),
          ],
        ));
  }
}

final loginNotifier = StateNotifierProvider(
  (ref) => LoginNotifier(FirebaseAuth.instance),
);
