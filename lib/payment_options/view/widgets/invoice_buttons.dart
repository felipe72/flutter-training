import 'package:flutter/material.dart';

class InvoiceButtons extends StatelessWidget {
  InvoiceButtons({Key key}) : super(key: key);

  void goBack(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
          onPressed: () => goBack(context),
          child: Text('Voltar'),
        ),
        Text('1 de 3'),
        ElevatedButton(
          onPressed: () => {},
          child: Text('Continuar'),
        )
      ],
    );
  }
}
