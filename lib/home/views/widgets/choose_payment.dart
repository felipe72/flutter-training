import 'package:faturas/home/views/widgets/buttons.dart';
import 'package:flutter/material.dart';
import '../../../payment_options/view/screen/payment_options.dart';

class ChoosePayment extends StatelessWidget {
  ChoosePayment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Formas de pagamento',
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        BankTicket(),
        CreditCard(),
      ],
    );
  }
}

class BankTicket extends StatelessWidget {
  BankTicket({Key key}) : super(key: key);

  void onPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('Erro'),
        content: Text('Não implementado'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'Ok'),
            child: Text('Ok'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> buttons = [
      'Copiar código de barras do boleto',
      'Enviar boleto por e-mail',
    ].map((data) => HomeButton(data, onPressed: onPressed)).toList();

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text(
            'Boleto Bancário',
            style: TextStyle(fontSize: 20.0, color: Colors.grey),
          ),
        ),
        ...buttons,
      ],
    );
  }
}

class CreditCard extends StatelessWidget {
  CreditCard({Key key}) : super(key: key);

  void onPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentOptionsScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text(
            'Cartão de crédito',
            style: TextStyle(fontSize: 20.0, color: Colors.grey),
          ),
        ),
        HomeButton('Pagar com cartão de crédito', onPressed: onPressed),
      ],
    );
  }
}
