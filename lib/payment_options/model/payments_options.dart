class PaymentOption {
  PaymentOption({this.number, this.total});

  int number;
  double get installmentValue => total / number;
  double total;
}
