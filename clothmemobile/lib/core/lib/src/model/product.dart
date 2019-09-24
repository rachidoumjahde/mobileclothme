import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

class Product {
  final String name;
  final String details;
  final String gender;
  final String material;
  final String category;
  final String categoryType;
  final String care;
  final String productImageUrl;
  final KtList<String> imagesUrl;

  Product({
    @required this.name,
    this.details,
    this.gender,
    this.material,
    this.category,
    this.categoryType,
    this.care,
    this.productImageUrl,
    this.imagesUrl
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Product &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              details == other.details &&
              gender == other.gender &&
              material == other.material &&
              category == other.category &&
              categoryType == other.categoryType &&
              care == other.care &&
              productImageUrl == other.productImageUrl &&
              imagesUrl == other.imagesUrl;

  @override
  int get hashCode =>
      name.hashCode ^
      details.hashCode ^
      gender.hashCode ^
      material.hashCode ^
      category.hashCode ^
      categoryType.hashCode ^
      care.hashCode ^
      productImageUrl.hashCode ^
      imagesUrl.hashCode;

}

