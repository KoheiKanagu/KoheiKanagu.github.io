import 'package:KoheiKanagu_github_io/pages/countdown/countdown_page.dart';
import 'package:KoheiKanagu_github_io/pages/home/widgets/login_form.dart';
import 'package:KoheiKanagu_github_io/pages/kintai/kintai_page.dart';
import 'package:KoheiKanagu_github_io/pages/playground/playground_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  static const routeName = '/';

  final Image nyan = Image.asset('assets/images/nyan.gif');
  final String sourceUrl =
      'https://github.com/KoheiKanagu/KoheiKanagu.github.io';
  final String email = 'kanagu@kingu.dev';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              expandedHeight: 256,
              flexibleSpace: nyan,
            ),
            SliverPadding(
              padding: const EdgeInsets.all(12),
              sliver: SliverList(
                delegate: SliverChildListDelegate.fixed(
                  [
                    ..._buildLinkCards(),
                    Container(height: 32),
                    ..._buildProfileCard(),
                    Container(height: 32),
                    LoginForm(),
                    Container(height: 32),
                    const Text('作ったやつとか'),
                    ..._buildContentsCards(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildProfileCard() => [
        Card(
          child: ListTile(
            title: const Text('Kohei Kanagu'),
            subtitle: const Text('金具 浩平'),
            leading: Icon(Icons.tag_faces),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(email),
            leading: Icon(Icons.mail),
            trailing: Icon(Icons.send),
            onTap: () => launch('mailto:$email'),
          ),
        ),
        Card(
          child: ListTile(
            title: const Text('このサイト'),
            subtitle: Text(sourceUrl),
            leading: Icon(Icons.code),
            trailing: Icon(Icons.open_in_new),
            onTap: () => launch(sourceUrl),
          ),
        ),
      ];

  List<Widget> _buildLinkCards() => [
        _buildLinkCard(
          FontAwesomeIcons.github,
          'https://github.com/KoheiKanagu',
        ),
        _buildLinkCard(
          FontAwesomeIcons.solidQuestionCircle,
          'https://qiita.com/KoheiKanagu',
        ),
        _buildLinkCard(
          FontAwesomeIcons.facebook,
          'https://www.facebook.com/k.g.kohei',
        ),
      ];

  Widget _buildLinkCard(
    IconData iconData,
    String link,
  ) {
    return Card(
      child: ListTile(
        leading: Icon(iconData),
        trailing: Icon(Icons.open_in_new),
        title: Text(link),
        onTap: () => launch(link),
      ),
    );
  }

  List<Widget> _buildContentsCards(BuildContext context) => [
        _buildContentsCard(
          context,
          Icons.timer,
          'カウントダウン',
          CountdownPage.routeName,
        ),
        _buildContentsCard(
          context,
          Icons.work,
          '勤怠',
          KintaiPage.routeName,
        ),
        _buildContentsCard(
          context,
          Icons.category,
          'Playground',
          PlayGroundPage.routeName,
        ),
      ];

  Widget _buildContentsCard(
    BuildContext context,
    IconData iconData,
    String title,
    String route,
  ) {
    return Card(
      child: ListTile(
        leading: Icon(iconData),
        trailing: Icon(Icons.navigate_next),
        title: Text(title),
        onTap: () => Navigator.pushNamed(context, route),
      ),
    );
  }
}
