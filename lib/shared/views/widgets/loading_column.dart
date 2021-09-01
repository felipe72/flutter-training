import 'package:flutter/material.dart';

class LoadingColumn extends StatelessWidget {
  LoadingColumn({this.children, this.isLoading});

  final List<Widget> children;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return isLoading ? LoadingProgress() : Column(children: children);
  }
}

class LoadingProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
