import 'package:KoheiKanagu_github_io/pages/home/notifiers/login_notifier.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatelessWidget {
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ChangeNotifierProvider(
        create: (_) => LoginNotifier(),
        child: ListTile(
          contentPadding: EdgeInsets.only(bottom: 12, left: 12, right: 12),
          title: _LoginForm(_emailCtrl, _passCtrl, _formKey),
          trailing: _LoginButton(_emailCtrl, _passCtrl, _formKey),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final TextEditingController _emailCtrl;
  final TextEditingController _passCtrl;

  final GlobalKey<FormState> _formKey;

  const _LoginButton(
    this._emailCtrl,
    this._passCtrl,
    this._formKey, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (context.watch<LoginNotifier>().user != null) {
      return MaterialButton(
        color: Colors.red,
        child: Text(
          "ログアウト",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () => context.read<LoginNotifier>().logout(),
      );
    }

    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: () async {
        if (_formKey.currentState.validate()) {
          final result = await context
              .read<LoginNotifier>()
              .login(_emailCtrl.text, _passCtrl.text);

          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text("ログイン${result ? "成功" : "失敗"}")),
          );
        }
      },
      child: Text(
        "ログイン",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  final TextEditingController _emailCtrl;
  final TextEditingController _passCtrl;

  final GlobalKey<FormState> _formKey;

  const _LoginForm(
    this._emailCtrl,
    this._passCtrl,
    this._formKey, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: "メール",
                icon: Icon(Icons.account_box),
              ),
              controller: _emailCtrl,
              enabled: context.watch<LoginNotifier>().user == null,
              validator: (v) =>
                  EmailValidator.validate(v) ? null : "不正なメールアドレス",
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "パスワード",
                icon: Icon(Icons.lock),
              ),
              obscureText: true,
              controller: _passCtrl,
              enabled: context.watch<LoginNotifier>().user == null,
              validator: (v) => v.isEmpty ? "空欄" : null,
            ),
          ],
        ));
  }
}
