class PaymentOption {
  PaymentOption({this.number, this.total});

  int number;
  double get value => total / number;
  double total;
}
