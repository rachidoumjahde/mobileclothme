import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

import 'brand.dart';
import 'company.dart';

class Product {
  final String id;
  final String name;
  final String details;
  final String genderType;
  final double price;
  final double discount;
  final String material;
  final double weight;
  final String category;
  final String categoryType;
  final String care;
  final String deliveryInfo;
  final String returnInfo;
  final String productImageUrl;
  final KtList<String> imagesUrl;
  final Company created_by;
  final Brand product_of;
  final DateTime created_date;

  Product({
    @required this.id,
    @required this.name,
    this.details,
    this.genderType,
    this.price,
    this.discount,
    this.material,
    this.weight,
    this.category,
    this.categoryType,
    this.care,
    this.deliveryInfo,
    this.returnInfo,
    this.productImageUrl,
    this.imagesUrl,
    this.created_by,
    this.product_of,
    this.created_date
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Product &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              name == other.name &&
              details == other.details &&
              genderType == other.genderType &&
              price == other.price &&
              discount == other.discount &&
              material == other.material &&
              weight == other.weight &&
              category == other.category &&
              categoryType == other.categoryType &&
              care == other.care &&
              deliveryInfo == other.deliveryInfo &&
              returnInfo == other.returnInfo &&
              productImageUrl == other.productImageUrl &&
              imagesUrl == other.imagesUrl &&
              created_by == other.created_by &&
              product_of == other.product_of &&
              created_date == other.created_date;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      details.hashCode ^
      genderType.hashCode ^
      price.hashCode ^
      discount.hashCode ^
      material.hashCode ^
      weight.hashCode ^
      category.hashCode ^
      categoryType.hashCode ^
      care.hashCode ^
      deliveryInfo.hashCode ^
      returnInfo.hashCode ^
      productImageUrl.hashCode ^
      created_by.hashCode ^
      product_of.hashCode ^
      created_date.hashCode ^
      imagesUrl.hashCode;

}



