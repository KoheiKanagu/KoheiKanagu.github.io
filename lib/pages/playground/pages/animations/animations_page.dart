import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/animations/detail1_page.dart';
import 'package:koheikanagu_github_io/pages/playground/pages/animations/detail2_page.dart';
import 'package:koheikanagu_github_io/pages/playground/playground_page.dart';

class AnimationsPage extends StatelessWidget {
  const AnimationsPage({Key? key}) : super(key: key);

  static const routeName = '${PlayGroundPage.routeName}/animations';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: OpenContainer(
        transitionType: ContainerTransitionType.fade,
        openBuilder: (context, action) {
          return Detail1Page(
            openContainer: action,
          );
        },
        closedBuilder: (context, actions) {
          return FloatingActionButton(
            onPressed: actions,
            child: const Icon(Icons.add),
          );
        },
        closedShape: const CircleBorder(),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            OpenContainer(
              transitionType: ContainerTransitionType.fade,
              openBuilder: (context, action) {
                return Detail1Page(
                  openContainer: action,
                );
              },
              closedBuilder: (context, action) {
                return ListTile(
                  title: Text('${ContainerTransitionType.fade}'),
                );
              },
            ),
            OpenContainer(
              transitionType: ContainerTransitionType.fadeThrough,
              openBuilder: (context, action) {
                return Detail1Page(
                  openContainer: action,
                );
              },
              closedBuilder: (context, action) {
                return ListTile(
                  title: Text('${ContainerTransitionType.fadeThrough}'),
                );
              },
            ),
            OpenContainer(
              transitionType: ContainerTransitionType.fade,
              openBuilder: (context, action) {
                return Detail2Page(
                  openContainer: action,
                );
              },
              closedBuilder: (context, action) {
                return const ListTile(
                  title: Text('with AppBar'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
