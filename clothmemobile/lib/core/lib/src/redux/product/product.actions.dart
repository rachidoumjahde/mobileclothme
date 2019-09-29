import 'package:treva_shop_flutter/src/model/product.dart';

class FetchProduct {
  final Product product;
  FetchProduct(this.product);
}

class FetchProducts {
  final Product products;
  FetchProducts(this.products);
}

class UpdateProduct {
  final Product product;
  UpdateProduct(this.product);
}

class DeleteProduct {
  final Product product;
  DeleteProduct(this.product);
}