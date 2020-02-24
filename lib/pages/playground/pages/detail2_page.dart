import 'package:flutter/material.dart';

class Detail2Page extends StatelessWidget {
  const Detail2Page({
    Key key,
    @required this.openContainer,
  }) : super(key: key);

  static const routeName = '/detail_2';

  final VoidCallback openContainer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail2'),
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
