import 'package:flutter/material.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/animations/animations_page.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/countdown/countdown_page.dart';
import 'package:koheikanagu_github_io/pages/playground/widgets/login_form.dart';

class PlayGroundPage extends StatelessWidget {
  const PlayGroundPage({Key key}) : super(key: key);

  static const routeName = '/play_ground';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          LoginForm(),
          ListTile(
            title: const Text(AnimationsPage.routeName),
            onTap: () => Navigator.pushNamed(context, AnimationsPage.routeName),
          ),
          ListTile(
            title: const Text(CountdownPage.routeName),
            onTap: () => Navigator.pushNamed(context, CountdownPage.routeName),
          ),
          // ListTile(
          //   title: const Text(KintaiPage.routeName),
          //   onTap: () => Navigator.pushNamed(context, KintaiPage.routeName),
          // ),
        ],
      ),
    );
  }
}
