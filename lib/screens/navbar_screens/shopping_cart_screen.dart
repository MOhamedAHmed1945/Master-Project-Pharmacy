import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../components/items/item_shopping_cart.dart';
import '../../components/text/text_button.dart';
import '../../models/model_provider.dart';
import '../home_screen.dart';
import 'invoice_screen.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);
  static const String shoppingCartRoute = 'shopping cart';
  @override
  Widget build(BuildContext context) {
    return Consumer<ModelProvider>(
        builder: ((context, classInstance, child) {
          return Scaffold(
            appBar: AppBar(
              elevation: 2.0,
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, HomeScreen.homeScreenRoute, (route) => false);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.lightBlue[900]!,
                  size: 30.0,
                ),
              ),
              title: Text(
                'Shopping Cart',
                style: TextStyle(
                  color: Colors.lightBlue[900]!,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 12.5,
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 7,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: Color(0xFFFEFCFF),
                      //height: MediaQuery.of(context).size.height / 1.38,
                      height: MediaQuery.of(context).size.height / 1.53,
                      child: ListView.builder(
                        itemCount: classInstance.selectedProduct.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemShoppingCart(
                            image: classInstance.selectedProduct[index].productImage,
                            name: classInstance.selectedProduct[index].productName,
                            price: classInstance.selectedProduct[index].productPrice!.toString(),
                            onPressed: (){
                              classInstance.remove(
                                  classInstance.selectedProduct[index]);
                            },
                            totalPrice: '10.00',
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 6.0,
                      bottom: 0.0,
                      left: 8.0,
                      right: 8.0,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total :',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo),
                              ),
                              Text(
                                ' \$ ${classInstance.productPrice.toString()}',
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        ReusableTextButton(
                          color: Colors.lightBlue[900]!,
                          onPressed: () {//InvoiceScreen
                            Navigator.pushNamedAndRemoveUntil( //pushNamedAndRemoveUntil
                                context,
                                InvoiceScreen.invoiceScreenRoute,
                                    (Route<dynamic> route) => false);
                          },
                          text: 'CheckOut', // InvoiceScreen()
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );

        }
        )
    );
  }
}