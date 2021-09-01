import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  HomeButton(this.data, {Key key, this.onPressed}) : super(key: key);
  final String data;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    final Widget text = Center(child: Text(data));
    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: OutlinedButton(
        onPressed: () => onPressed(context),
        child: SizedBox(
          height: 48,
          width: double.infinity,
          child: text,
        ),
      ),
    );
  }
}
