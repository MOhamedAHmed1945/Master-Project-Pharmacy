import 'package:flutter/foundation.dart';
import 'data_product_model.dart';

class ModelProvider with ChangeNotifier {
  List selectedProduct = [];
 // List selectedProductOrders = [];
  int productPrice = 0;
  add(DataProductModel product) {
    selectedProduct.add(product);
    // this function add item for List 'selectedProduct'
    productPrice += product.productPrice.round();
    // this function add price for icon in appBar and change value
    notifyListeners();
  }

  remove(DataProductModel product) {
    selectedProduct.remove(product);
    // this function add item for List 'selectedProduct'
    productPrice -= product.productPrice.round();
    // this function add price for icon in appBar and change value
    notifyListeners();
  }

  get itemModelLength {
    return selectedProduct.length;
  }
 /* addOrder(DataProductModel productOrder) {
    selectedProductOrders.add(productOrder);
    // this function add item for List 'selectedProduct'
    //productPrice += productOrder.productPrice.round();
    // this function add price for icon in appBar and change value
    notifyListeners();
  }*/
}
