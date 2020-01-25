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
              delegate: SliverChildListDelegate.fixed(
                [
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
                  _name(),
                  _mail(),
                  _portfolio(),
                  Container(height: 32),
                  Text("作ったやつとか"),
                  _pages(context, Icons.timer, "カウントダウン", "/countdown"),
                  _pages(context, Icons.work, "勤怠", "/kintai"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _portfolio() {
    final url = "https://github.com/KoheiKanagu/KoheiKanagu.github.io";

    return Card(
      child: ListTile(
        title: Text("このサイト"),
        subtitle: Text(url),
        leading: Icon(Icons.code),
        trailing: Icon(Icons.open_in_new),
        onTap: () => launch(url),
      ),
    );
  }

  Widget _name() {
    return Card(
      child: ListTile(
        title: Text("Kohei Kanagu"),
        subtitle: Text("金具 浩平"),
        leading: Icon(Icons.tag_faces),
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

  Widget _pages(
      BuildContext context, IconData iconData, String title, String name) {
    return Card(
      child: ListTile(
        leading: Icon(iconData),
        trailing: Icon(Icons.navigate_next),
        title: Text(title),
        onTap: () => Navigator.pushNamed(context, name),
      ),
    );
  }
}
