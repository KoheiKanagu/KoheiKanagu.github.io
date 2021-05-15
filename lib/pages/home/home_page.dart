import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:koheikanagu_github_io/pages/playground/playground_page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  static const routeName = '/';

  final Image nyan = Image.asset('assets/images/nyan.gif');
  final String sourceUrl =
      'https://github.com/KoheiKanagu/KoheiKanagu.github.io';
  final String email = 'kanagu@kingu.dev';
  final String workUrl =
      'https://github.com/KoheiKanagu/KoheiKanagu.github.io/blob/develop/web/work.md';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: ElevatedButton(
            onPressed: () => launch('https://youtu.be/QH2-TGUlwu4'),
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              elevation: 0,
            ),
            child: nyan,
          ),
        ),
        body: ListView(
          children: [
            ..._buildProfileCard(context),
            const Divider(),
            ..._buildLinkCards(),
            const Divider(),
            ..._buildAppTiles(),
            const Divider(),
            _buildPlaygroundCard(context),
          ],
        ),
      );

  List<Widget> _buildAppTiles() => [
        _buildLinkTile(
          FontAwesomeIcons.appStoreIos,
          'App Store',
          'https://apps.apple.com/am/developer/id1530720615',
        ),
        _buildLinkTile(
          FontAwesomeIcons.googlePlay,
          'Google Play',
          'https://play.google.com/store/apps/developer?id=Kohei+Kanagu',
        ),
      ];

  List<Widget> _buildProfileCard(BuildContext context) => [
        const ListTile(
          title: Text('Kohei Kanagu'),
          subtitle: Text('金具 浩平'),
          leading: Icon(Icons.tag_faces),
        ),
        ListTile(
          title: Text(email),
          leading: const Icon(Icons.mail),
          trailing: const Icon(Icons.send),
          onTap: () => launch('mailto:$email'),
        ),
        ListTile(
          title: const Text('このサイト'),
          subtitle: Text(sourceUrl),
          leading: const Icon(Icons.code),
          trailing: const Icon(Icons.open_in_new),
          onTap: () => launch(sourceUrl),
        ),
        ListTile(
          title: const Text('お仕事募集中'),
          leading: const Icon(Icons.work),
          trailing: const Icon(Icons.open_in_new),
          onTap: () => launch(workUrl),
        ),
      ];

  List<Widget> _buildLinkCards() => [
        _buildLinkTile(
          FontAwesomeIcons.github,
          'GitHub',
          'https://github.com/KoheiKanagu',
        ),
        _buildLinkTile(
          FontAwesomeIcons.solidQuestionCircle,
          'Qiita',
          'https://qiita.com/KoheiKanagu',
        ),
        _buildLinkTile(
          FontAwesomeIcons.facebook,
          'Facebook',
          'https://www.facebook.com/k.g.kohei',
        ),
        _buildLinkTile(
          FontAwesomeIcons.steam,
          'Steam',
          'https://steamcommunity.com/id/i_am_kingu',
        ),
        _buildLinkTile(
          FontAwesomeIcons.solidQuestionCircle,
          'Zenn',
          'https://zenn.dev/kingu',
        ),
        _buildLinkTile(
          FontAwesomeIcons.medium,
          'Medium',
          'https://i-am-kingu.medium.com',
        ),
      ];

  Widget _buildLinkTile(
    IconData iconData,
    String title,
    String link,
  ) =>
      ListTile(
        leading: Icon(iconData),
        trailing: const Icon(Icons.open_in_new),
        title: Text(title),
        subtitle: Text(link),
        onTap: () => launch(link),
      );

  Widget _buildPlaygroundCard(BuildContext context) => ListTile(
        leading: const Icon(Icons.category),
        trailing: const Icon(Icons.navigate_next),
        title: const Text('Playground'),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => const PlayGroundPage(),
            settings: const RouteSettings(
              name: PlayGroundPage.routeName,
            ),
          ),
        ),
      );
}
