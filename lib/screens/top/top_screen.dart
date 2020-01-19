import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TopScreen extends StatelessWidget {
  final nyan = Image.asset("images/nyan.gif");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 256,
            flexibleSpace: nyan,
          ),
          SliverPadding(
              padding: EdgeInsets.all(12),
              sliver: SliverList(
                  delegate: SliverChildListDelegate.fixed([
                _sites(
                  FontAwesomeIcons.github,
                  "https://github.com/KoheiKanagu",
                ),
                _sites(
                  FontAwesomeIcons.solidQuestionCircle,
                  "https://qiita.com/KoheiKanagu",
                ),
                _sites(
                  FontAwesomeIcons.facebook,
                  "https://www.facebook.com/k.g.kohei",
                ),
                Container(height: 32),
                _mail(),
              ]))),
        ],
      ),
    );
  }

  Widget _mail() {
    final mail = "kanagu@dev.kingu";

    return Card(
      child: ListTile(
        title: Text(mail),
        leading: Icon(Icons.mail),
        trailing: Icon(Icons.send),
        onTap: () => launch("mailto:$mail"),
      ),
    );
  }

  Widget _sites(IconData iconData, String link) {
    return Card(
      child: ListTile(
        leading: Icon(iconData),
        trailing: Icon(Icons.open_in_new),
        title: Text(link),
        onTap: () => launch(link),
      ),
    );
  }
}
