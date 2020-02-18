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
          const ListTile(
            title: const Text('Hi'),
          ),
        ],
      ),
    );
  }
}
