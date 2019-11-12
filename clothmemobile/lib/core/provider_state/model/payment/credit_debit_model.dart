
class CreditDebitPaymentModel {
  double cardNumber;
  String nameOnCard;
  DateTime expiryDate;
  int ccpNumber;
  String cardType;

  CreditDebitPaymentModel({
    this.cardNumber,
    this.nameOnCard,
    this.expiryDate,
    this.ccpNumber,
    this.cardType,
  });
}