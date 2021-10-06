import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  static const path = '/profile';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: const [
          _ProfileSectionWidget(),
          Divider(),
          _SocialSectionWidget(),
        ],
      ),
    );
  }
}

class _SocialSectionWidget extends StatelessWidget {
  const _SocialSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const Divider(),
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
      ],
    );
  }

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
}

class _ProfileSectionWidget extends StatelessWidget {
  const _ProfileSectionWidget({
    Key? key,
  }) : super(key: key);

  static const String email = 'kanagu@kingu.dev';
  static const String workUrl =
      'https://github.com/KoheiKanagu/KoheiKanagu.github.io/blob/main/web/work.md';
  static const String sourceUrl =
      'https://github.com/KoheiKanagu/KoheiKanagu.github.io';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text('Kohei Kanagu'),
          subtitle: Text('金具 浩平'),
          leading: Icon(Icons.tag_faces),
        ),
        ListTile(
          title: const Text(email),
          leading: const Icon(Icons.mail),
          trailing: const Icon(Icons.send),
          onTap: () => launch('mailto:$email'),
        ),
        ListTile(
          title: const Text('このサイト'),
          subtitle: const Text(sourceUrl),
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
      ],
    );
  }
}
