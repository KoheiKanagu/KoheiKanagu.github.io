import 'package:KoheiKanagu_github_io/screens/top/bloc/login_bloc.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  final _loginBloC = LoginBloC();

  @override
  Widget build(BuildContext context) {
    return Card(
        child: StreamBuilder(
      builder: (context, snapshot) {
        return ListTile(
          contentPadding: EdgeInsets.only(bottom: 12, left: 12, right: 12),
          title: _buildForm(),
          trailing: _buildLoginButton(_loginBloC.isAuthenticated, context),
        );
      },
      stream: _loginBloC.onLoginStatusChanged(),
      initialData: false,
    ));
  }

  Widget _buildLoginButton(bool isAuthenticated, BuildContext context) {
    if (isAuthenticated) {
      return MaterialButton(
        child: Text("ログイン済み"),
        onPressed: null,
      );
    }

    return MaterialButton(
      color: Theme.of(context).primaryColor,
      onPressed: () async {
        if (_formKey.currentState.validate()) {
          _loginBloC.login(_emailCtrl.text, _passCtrl.text);
        }
      },
      child: Text(
        "ログイン",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildForm() {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  labelText: "メール", icon: Icon(Icons.account_box)),
              controller: _emailCtrl,
              validator: (v) =>
                  EmailValidator.validate(v) ? null : "不正なメールアドレス",
            ),
            TextFormField(
              decoration:
                  InputDecoration(labelText: "パスワード", icon: Icon(Icons.lock)),
              obscureText: true,
              controller: _passCtrl,
              validator: (v) => v.isEmpty ? "空欄" : null,
            ),
          ],
        ));
  }
}
