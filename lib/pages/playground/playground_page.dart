import 'package:KoheiKanagu_github_io/pages/playground/pages/animations_page.dart';
import 'package:flutter/material.dart';

class PlayGroundPage extends StatelessWidget {
  const PlayGroundPage({Key key}) : super(key: key);

  static const routeName = '/play_ground';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(AnimationsPage.routeName),
            onTap: () => Navigator.pushNamed(context, AnimationsPage.routeName),
          ),
        ],
      ),
    );
  }
}
