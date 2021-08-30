import 'package:flutter/material.dart';

class AlignLeftColumn extends StatelessWidget {
  AlignLeftColumn({Key key, this.children}) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: this.children,
    );
  }
}
