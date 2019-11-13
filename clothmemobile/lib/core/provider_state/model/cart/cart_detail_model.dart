import 'package:clothme/core/provider_state/model/common/payment_method.dart';
import 'package:flutter/material.dart';

class CartDetailModel {
  String productId;
  String productName;
  double productPrice;
  Image productImage;
  PaymentMethod paymentMethods;
  double productTax;
  double totalPrice;
  double totalTax;
  double shippingEstimate;

  CartDetailModel({
    this.productId,
    this.productName,
    this.productPrice,
    this.productImage,
    this.paymentMethods,
    this.productTax,
    this.totalPrice,
    this.totalTax,
    this.shippingEstimate,
  });
}