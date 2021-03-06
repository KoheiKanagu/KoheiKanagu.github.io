import 'package:flutter/material.dart';

class Detail1Page extends StatelessWidget {
  const Detail1Page({
    Key? key,
    required this.openContainer,
  }) : super(key: key);

  static const routeName = '/detail_1';

  final VoidCallback openContainer;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: ElevatedButton(
          onPressed: openContainer,
          child: const Text('Back'),
        ),
      ),
    );
  }
}
