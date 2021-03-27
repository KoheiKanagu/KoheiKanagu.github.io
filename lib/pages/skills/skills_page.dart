import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:koheikanagu_github_io/pages/skills/skills_page_controller.dart';

class SkillsPage extends HookWidget {
  const SkillsPage({Key? key}) : super(key: key);

  static const routeName = '/skills_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Text('読み込み中');
          }
          return Markdown(
            selectable: true,
            data: snapshot.data! as String,
          );
        },
        future: useProvider(skillsPageController).fetchSkillMd(),
      ),
    );
  }
}

final skillsPageController = Provider.autoDispose(
  (ref) => SkillsPageController(),
);
