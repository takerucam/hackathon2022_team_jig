import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('ヘッダー'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(40);
}
