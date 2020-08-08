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
                    _buildPlaygroundCard(context),
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
        const Card(
          child: ListTile(
            title: Text('Kohei Kanagu'),
            subtitle: Text('金具 浩平'),
            leading: Icon(Icons.tag_faces),
          ),
        ),
        Card(
          child: ListTile(
            title: Text(email),
            leading: const Icon(Icons.mail),
            trailing: const Icon(Icons.send),
            onTap: () => launch('mailto:$email'),
          ),
        ),
        Card(
          child: ListTile(
            title: const Text('このサイト'),
            subtitle: Text(sourceUrl),
            leading: const Icon(Icons.code),
            trailing: const Icon(Icons.open_in_new),
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
        trailing: const Icon(Icons.open_in_new),
        title: Text(link),
        onTap: () => launch(link),
      ),
    );
  }

  Widget _buildPlaygroundCard(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.category),
        trailing: const Icon(Icons.navigate_next),
        title: const Text('Playground'),
        onTap: () => Navigator.pushNamed(context, PlayGroundPage.routeName),
      ),
    );
  }
}
