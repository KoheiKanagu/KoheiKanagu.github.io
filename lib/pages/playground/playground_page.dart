import 'package:flutter/material.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/animations/animations_page.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/countdown/countdown_page.dart';

class PlayGroundPage extends StatelessWidget {
  const PlayGroundPage({Key? key}) : super(key: key);

  static const routeName = '/play_ground';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text(AnimationsPage.routeName),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const AnimationsPage(),
                settings: const RouteSettings(
                  name: AnimationsPage.routeName,
                ),
              ),
            ),
          ),
          ListTile(
            title: const Text(CountdownPage.routeName),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const CountdownPage(),
                settings: const RouteSettings(
                  name: CountdownPage.routeName,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
