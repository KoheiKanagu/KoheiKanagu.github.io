import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/pages/contents/contents_page.dart';
import 'package:koheikanagu_github_io/providers/profile/profile_provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ContentsPublicPage extends ConsumerWidget {
  const ContentsPublicPage({
    Key? key,
  }) : super(key: key);

  static const location = '${ContentsPage.path}/$path';

  static const path = 'public';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ref.watch(nyanProvider).when(
                data: (url) => IconButton(
                  icon: CachedNetworkImage(
                    imageUrl: url,
                  ),
                  iconSize: 128,
                  onPressed: () => launch('https://youtu.be/QH2-TGUlwu4'),
                ),
                error: (_, __, ___) => const Icon(
                  FontAwesomeIcons.cat,
                  size: 128,
                ),
                loading: (previous) => const Icon(
                  FontAwesomeIcons.cat,
                  size: 128,
                ),
              )
        ],
      ),
    );
  }
}
