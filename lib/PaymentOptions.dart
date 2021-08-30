import 'package:flutter/material.dart';
import 'Commons.dart';

class PaymentOptions extends StatelessWidget {
  PaymentOptions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlignLeftColumn(
      children: [
        PaymentTitle(),
        BankTicket(),
        CreditCard(),
      ],
    );
  }
}

class PaymentTitle extends StatelessWidget {
  PaymentTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Formas de pagamento',
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }
}

class BankTicket extends StatelessWidget {
  BankTicket({Key key}) : super(key: key);

  void onPressed() {}

  @override
  Widget build(BuildContext context) {
    final Widget copyBarCodeButton =
        CustomButton('Cópiar código de barras do boleto');
    final Widget sendMail = CustomButton('Enviar boleto por e-mail');

    return AlignLeftColumn(
      children: [
        Container(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text(
            'Boleto Bancário',
            style: TextStyle(fontSize: 20.0, color: Colors.grey),
          ),
        ),
        copyBarCodeButton,
        sendMail,
      ],
    );
  }
}

class CreditCard extends StatelessWidget {
  CreditCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget payWithCreditCard = CustomButton(
      'Pagar com cartão de crédito',
      active: true,
    );

    return AlignLeftColumn(
      children: [
        Container(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text(
            'Cartão de crédito',
            style: TextStyle(fontSize: 20.0, color: Colors.grey),
          ),
        ),
        payWithCreditCard,
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  CustomButton(this.data, {Key key, this.active}) : super(key: key);
  final String data;
  final bool active;

  void onPressed(BuildContext context) {
    if (this.active != null) {
    } else {
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
  }

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
